import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //super refers to the parent class
  const StyledText(this.text, {Key? key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }
}
