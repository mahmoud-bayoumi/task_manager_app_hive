import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNotePage extends StatelessWidget {
  
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFED42C),
      appBar: AppBar(
        backgroundColor: const Color(0xffFED42C),
        title: const Text(
          'Add Note',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AddNoteForm(),
        ),
      ),
    );
  }
}
