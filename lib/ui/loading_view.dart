import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x40757575),
      alignment: Alignment.center,
      child: const CircularProgressIndicator(),
    );
  }
}
