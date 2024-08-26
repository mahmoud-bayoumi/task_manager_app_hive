class AddNotesStates {}

class AddNoteIntial extends AddNotesStates {}

class AddNotesuccess extends AddNotesStates {}

class AddNotefailure extends AddNotesStates {
  final String errMsg;

  AddNotefailure({required this.errMsg});
}

class AddNoteloading extends AddNotesStates {}
