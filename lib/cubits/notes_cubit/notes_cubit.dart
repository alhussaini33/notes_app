import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants/variables.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  late List<NoteModel> notes;

  fetchAllNotes() {
    var noteBox = Hive.box<NoteModel>(Variables.noteBox);
    notes = noteBox.values.toList();
    print('fetch notes :$notes');
    emit(NotesSuccess(notes: notes));
  }
}
