import 'package:flutter/material.dart';
import 'package:note_app/views/edit_view.dart';
import 'package:note_app/widgets/date_of_note.dart';
import 'package:note_app/widgets/list_tile_item.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditView();
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffFFCC80),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTileItem(),
              DateOfNote(),
            ],
          ),
        ),
      ),
    );
  }
}
