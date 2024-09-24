import 'package:flutter/material.dart';
import 'package:note_app/constants/text_styles.dart';

class DateOfNote extends StatelessWidget {
  const DateOfNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Text(
        'May21,2022',
        style: TextStyles.noteSubTitle,
      ),
    );
  }
}
