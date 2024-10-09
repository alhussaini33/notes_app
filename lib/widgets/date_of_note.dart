import 'package:flutter/material.dart';
import 'package:note_app/constants/text_styles.dart';

class DateOfNote extends StatelessWidget {
  const DateOfNote({super.key, required this.date});
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Text(
        date,
        style: TextStyles.noteSubTitle,
      ),
    );
  }
}
