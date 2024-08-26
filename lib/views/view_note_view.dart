import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_card_view.dart';

class ViewNotePage extends StatelessWidget {
  const ViewNotePage({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFED42C),
        title: const Text(
          'Edit Note',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
      backgroundColor: const Color(0xffFED42C),
      body: SingleChildScrollView(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          elevation: 16,
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NoteCardViewText(
                noteText: noteModel.title,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              NoteCardViewText(
                noteText: noteModel.subTitle,
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
              NoteCardViewText(
                noteText: noteModel.description,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
