
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: BlocBuilder<NotesCubit, NotesCubitStates>(
        builder: (context, state) {
          List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes;
          return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NoteCard(
                noteModel: notes[index],
              );
            },
          );
        },
      ),
    );
  }
}
