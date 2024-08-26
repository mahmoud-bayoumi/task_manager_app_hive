import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String)? onChange;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    this.hintText = '',
    this.maxLines = 1,
    this.inputBorder,
    this.onSaved,
    this.onChange,
    this.controller,
  });

  final InputBorder? inputBorder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        controller: controller,
        onChanged: onChange,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'field is required';
          } else {
            return null;
          }
        },
        maxLines: maxLines,
        decoration: InputDecoration(
          border: inputBorder,
          hintText: hintText,
        ),
      ),
    );
  }
}
