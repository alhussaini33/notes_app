import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants/variables.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  late List<NoteModel> notes;
  NoteModel? selectedNote;
  Color selectedColor = Color(0xffF8FFE5);

  fetchAllNotes() {
    var noteBox = Hive.box<NoteModel>(Variables.noteBox);
    notes = noteBox.values.toList();
    print('fetch notes :$notes');
    emit(NotesSuccess(notes: notes));
  }

  deletNote(NoteModel note) async {
    try {
      var noteBox = Hive.box<NoteModel>(Variables.noteBox);
      await noteBox.delete(note.key);
      notes.remove(note);
      emit(NotesUpdated());
    } on Exception catch (e) {
      emit(NotesFaulier(errMessage: e.toString()));
    }
  }

  updateNote(NoteModel updatedNote, dynamic key) async {
    try {
      var noteBox = Hive.box<NoteModel>(Variables.noteBox);
      print('Updated Note Key: ${updatedNote.key}');
      await noteBox.put(key, updatedNote);
      print(updatedNote); // تحديث الملاحظة في Hive
      final index = notes.indexWhere((note) => note.key == key);
      if (index != -1) {
        notes[index] = updatedNote; // تحديث الملاحظة في القائمة
      }
      fetchAllNotes();
      emit(NotesUpdated()); // تحديث قائمة الملاحظات
    } catch (e) {
      print('Failed to update note: $e');
      emit(NotesFaulier(errMessage: e.toString()));
    }
  }
}
