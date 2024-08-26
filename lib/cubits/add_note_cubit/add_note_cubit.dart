import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNotesStates> {
  AddNoteCubit() : super(AddNoteIntial());
  addNote(NoteModel note) {
    emit(AddNoteloading());
    try {
      var box = Hive.box<NoteModel>(kBoxName);
      box.add(note);
      emit(AddNotesuccess());
    } catch (e) {
      emit(AddNotefailure(errMsg: e.toString()));
    }
  }
}
