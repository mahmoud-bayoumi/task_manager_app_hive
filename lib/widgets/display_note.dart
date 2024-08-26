import 'package:flutter/material.dart';

class DisplayNote extends StatelessWidget {
  const DisplayNote(
      {super.key,
      required this.noteText,
      required this.fontWeight,
      required this.fontSize});
  final String noteText;
  final FontWeight fontWeight;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              noteText,
              style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
            ),
          ),
        ),
      ],
    );
  }
}
