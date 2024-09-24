import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item.dart';

class ListOfItems extends StatelessWidget {
  const ListOfItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return const NoteItem();
        });
  }
}
