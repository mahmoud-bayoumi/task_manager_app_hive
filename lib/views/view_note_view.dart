import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/view_note_body.dart';

class ViewNotePage extends StatelessWidget {
  const ViewNotePage({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFED42C),
        title: const Text(
          'View Note',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
      backgroundColor: const Color(0xffFED42C),
      body: ViewNoteBody(noteModel: noteModel),
    );
  }
}
