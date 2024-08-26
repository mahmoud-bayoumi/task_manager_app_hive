import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNotePage extends StatefulWidget {
  final NoteModel note;

  const EditNotePage({super.key, required this.note});

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  TextEditingController? controllerTitle, controllerSubTitle, controllerDescrp;
  String? title, subTitle, descrp;
  @override
  void initState() {
    controllerTitle = TextEditingController(text: widget.note.title);
    controllerSubTitle = TextEditingController(text: widget.note.subTitle);
    controllerDescrp = TextEditingController(text: widget.note.description);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFED42C),
      appBar: AppBar(
        backgroundColor: const Color(0xffFED42C),
        title: const Text(
          'Edit Note',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              CustomTextField(
                controller: controllerTitle,
                onChange: (value) {
                  title = value;
                },
              ),
              CustomTextField(
                  controller: controllerSubTitle,
                  onChange: (value) {
                    subTitle = value;
                  }),
              CustomTextField(
                controller: controllerDescrp,
                onChange: (value) {
                  descrp = value;
                },
                maxLines: 5,
                inputBorder: const OutlineInputBorder(),
              ),
              const SizedBox(
                height: 60,
              ),
              MaterialButton(
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = subTitle ?? widget.note.subTitle;
                  widget.note.description = descrp ?? widget.note.description;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
                color: Colors.black,
                textColor: const Color(0xffFED42C),
                minWidth: 150,
                child: const Text(
                  'Edit Note',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
