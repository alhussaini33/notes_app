import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants/variables.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() async {
    try {
      var noteBox = Hive.box<NoteModel>(Variables.noteBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NotesSuccess(notes: notes));
    } on Exception catch (e) {
      emit(
        NoteFauiler(
          errMrssage: e.toString(),
        ),
      );
    }
  }
}
