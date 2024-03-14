import 'package:flutter/material.dart';
import 'package:google_gemini_ai/core/colors.dart';
import 'package:google_gemini_ai/core/constants.dart';
import 'package:google_gemini_ai/models/message_model.dart';
import 'package:google_gemini_ai/models/message_type.dart';
import 'package:google_gemini_ai/ui/loading_view.dart';
import 'package:google_gemini_ai/ui/message_view.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<MessageModel> messages = [];
  final TextEditingController _inputController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.background,
        appBar: AppBar(
          elevation: 10,
          title: const Text("Gemini Chat"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        return MessageView(message: messages[index]);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          minLines: 1,
                          maxLines: 4,
                          controller: _inputController,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _send(context: context);
                        },
                        icon: const Icon(
                          Icons.send,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Visibility(
              visible: isLoading,
              child: const LoadingView(),
            ),
          ],
        ),
      ),
    );
  }

  void _send({
    required BuildContext context,
  }) async {
    if (_inputController.text.isEmpty) {
      return;
    }

    final String text = _inputController.text;
    final MessageModel selfMessage = MessageModel(
      type: MessageType.self,
      text: text,
    );
    setState(() {
      isLoading = true;
      messages.add(selfMessage);
      _scrollDown();
    });

    final GenerativeModel model = GenerativeModel(
      apiKey: apiKey,
      model: aiModel,
    );
    final List<Content> contents = [Content.text(text)];
    final GenerateContentResponse response = await model.generateContent(contents);
    // show correct text on chat list, when success.
    setState(() {
      MessageModel feedback = MessageModel(
        type: MessageType.feedback,
        text: response.text ?? "",
      );
      messages.add(feedback);
      _scrollDown();

      _inputController.text = "";
      isLoading = false;
    });
  }

  void _scrollDown() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(microseconds: 1000),
        curve: Curves.easeInBack,
      );
    });
  }

  void _showError({
    required BuildContext context,
    required String error,
  }) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Something Error"),
          content: Text(error),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
