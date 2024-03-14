import 'package:flutter/material.dart';
import 'package:google_gemini_ai/models/message_model.dart';

class MessageView extends StatelessWidget {
  const MessageView({
    super.key,
    required this.message,
  });

  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width * 0.8;
    return Row(
      mainAxisAlignment: message.isSelf ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Card(
          color: message.isSelf ? Colors.white70 : Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: LimitedBox(
              maxWidth: maxWidth,
              child: Text(message.text),
            ),
          ),
        ),
      ],
    );
  }
}
