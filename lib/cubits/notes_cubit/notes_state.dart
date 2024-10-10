import 'package:note_app/models/note_model.dart';

class NotesState {}

class NotesInitial extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

class NotesUpdated extends NotesState {}

class NotesFaulier extends NotesState {
  final String errMessage;

  NotesFaulier({required this.errMessage});
}
