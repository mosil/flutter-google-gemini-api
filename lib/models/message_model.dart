import 'package:google_gemini_ai/models/message_type.dart';

class MessageModel {
  MessageType type;
  String text;

  bool get isSelf => type.isSelf;

  MessageModel({
    required this.type,
    this.text = "",
  });
}
