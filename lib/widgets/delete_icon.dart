import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

class DeleteIcon extends StatelessWidget {
  const DeleteIcon({super.key, required this.size, required this.note});
  final double size;
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        BlocProvider.of<NotesCubit>(context).deletNote(note);
      },
      icon: Icon(
        Icons.delete_rounded,
        size: size,
        color: Colors.black,
      ),
    );
  }
}
