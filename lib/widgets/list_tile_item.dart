import 'package:flutter/material.dart';
import 'package:note_app/constants/text_styles.dart';
import 'package:note_app/widgets/delete_icon.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text(
          'Flutter tips',
          style: TextStyles.noteTitle,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            'Build your career with Tharawat samy',
            style: TextStyles.noteSubTitle,
          ),
        ),
        trailing: const DeleteIcon(
          size: 35,
        ));
  }
}
