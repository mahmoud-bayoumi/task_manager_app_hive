import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/add_note_page.dart';
import 'package:notes_app/widgets/note_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
// home page 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFED42C),
      appBar: AppBar(
        backgroundColor: const Color(0xffFED42C),
        title: const Text(
          'Notes',
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return NoteCard(
              noteModel: NoteModel(title: 'x', subTitle: 'y', description: 'z'),
            );
          },
        ),
      ),
      floatingActionButton: IconButton.filled(
        style: IconButton.styleFrom(
          iconSize: 35,
          backgroundColor: Colors.black,
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddNotePage(),
              ));
        },
        icon: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
