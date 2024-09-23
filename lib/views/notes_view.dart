import 'package:flutter/material.dart';
import 'package:note_app/constants/text_styles.dart';
import 'package:note_app/widgets/note_item.dart';
import 'package:note_app/widgets/search_icon.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        surfaceTintColor: Colors.transparent,
        title: const Text(
          'Notes',
          style: TextStyles.tilte,
        ),
        actions: const [SearchIcon()],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const NoteItem();
          }),
    );
  }
}
