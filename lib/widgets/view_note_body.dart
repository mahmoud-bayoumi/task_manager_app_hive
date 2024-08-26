import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/display_note.dart';

class ViewNoteBody extends StatelessWidget {
  const ViewNoteBody({
    super.key,
    required this.noteModel,
  });

  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        elevation: 16,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DisplayNote(
              noteText: noteModel.title,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            DisplayNote(
              noteText: noteModel.subTitle,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
            DisplayNote(
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
    );
  }
}
