import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import 'package:notes_app/widgets/custom_floating_button.dart';
import 'package:notes_app/widgets/home_view_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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
      body: const HomeViewBody(),
      floatingActionButton: const CustomFloatinActionButton(),
    );
  }
}
