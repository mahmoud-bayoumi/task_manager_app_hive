import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_states.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesCubitStates> {
  NotesCubit() : super(NotesCubitInitial());
  late List<NoteModel> notes;
  fetchAllNotes() {
    notes = Hive.box<NoteModel>(kBoxName).values.toList();
    emit(NotesCubitSuccess());
  }
}
