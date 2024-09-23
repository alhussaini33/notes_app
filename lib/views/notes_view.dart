import 'package:flutter/material.dart';
import 'package:note_app/constants/text_styles.dart';
import 'package:note_app/widgets/search_icon.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyles.tilte,
        ),
        actions: const [SearchIcon()],
      ),
    );
  }
}
