import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> keyForm = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: keyForm,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Note Title',
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Subtitle',
          ),
          CustomTextField(
            onSaved: (value) {
              content = value;
            },
            maxLines: 5,
            inputBorder: const OutlineInputBorder(),
            hintText: 'Description',
          ),
          const SizedBox(
            height: 60,
          ),
          BlocListener<AddNoteCubit, AddNotesStates>(
            listener: (context, state) {
              if (state is AddNotesuccess) {
                Navigator.pop(context);
              }
              if (state is AddNotefailure) {}
            },
            child: MaterialButton(
              onPressed: () {
                if (keyForm.currentState!.validate()) {
                  keyForm.currentState!.save();
                  NoteModel note = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      description: content!);
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              color: Colors.black,
              textColor: const Color(0xffFED42C),
              minWidth: 150,
              child: const Text(
                'Add Note',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
