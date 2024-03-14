import 'package:flutter/material.dart';
import 'package:google_gemini_ai/core/colors.dart';
import 'package:google_gemini_ai/core/constants.dart';
import 'package:google_gemini_ai/ui/chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (apiKey == "YOUR_API_KEY") {
      throw ("must change your api key in `lib/core/constants.dart'");
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.primary,
          foregroundColor: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white54,
          contentPadding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white30, width: 0.0),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.focusedBorder, width: 2.0),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      home: const ChatPage(),
    );
  }
}
