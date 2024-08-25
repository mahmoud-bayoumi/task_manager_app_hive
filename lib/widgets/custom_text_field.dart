import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  const CustomTextField({
    super.key,
    this.hintText = '',
    this.maxLines = 1,
    this.inputBorder,
  });
  final InputBorder? inputBorder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          border: inputBorder,
          hintText: hintText,
        ),
      ),
    );
  }
}
