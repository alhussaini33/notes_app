import 'package:flutter/material.dart';
import 'package:note_app/constants/text_styles.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/delete_icon.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          note.title,
          style: TextStyles.noteTitle,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            note.subTitle,
            style: TextStyles.noteSubTitle,
          ),
        ),
        trailing: DeleteIcon(
          size: 35,
          note: note,
        ));
  }
}
