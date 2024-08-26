import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Scaffold(
        backgroundColor: const Color(0xffFED42C),
        appBar: AppBar(
          backgroundColor: const Color(0xffFED42C),
          title: const Text(
            'Add Note',
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: AddNoteForm(),
          ),
        ),
      ),
    );
  }
}
