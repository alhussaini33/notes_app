abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFauiler extends AddNoteState {
  final String errMrssage;

  AddNoteFauiler({required this.errMrssage});
}
