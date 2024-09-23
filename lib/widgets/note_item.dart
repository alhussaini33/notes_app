import 'package:flutter/material.dart';
import 'package:note_app/widgets/date_of_note.dart';
import 'package:note_app/widgets/delete_icon.dart';
import 'package:note_app/widgets/item_descreption.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        width: 450,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemDescreption(),
                DeleteIcon(),
              ],
            ),
            DateOfNote(),
          ],
        ),
      ),
    );
  }
}
