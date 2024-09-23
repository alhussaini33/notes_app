import 'package:flutter/material.dart';
import 'package:note_app/constants/text_styles.dart';

class DateOfNote extends StatelessWidget {
  const DateOfNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Text(
          'May21,2022',
          style: TextStyles.noteSubTitle,
        ),
      ),
    );
  }
}
