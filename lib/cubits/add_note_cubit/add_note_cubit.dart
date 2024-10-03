import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/variables.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(Variables.noteBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(
        AddNoteFauiler(
          errMrssage: e.toString(),
        ),
      );
    }
  }
}
