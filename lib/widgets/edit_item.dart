import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditItem extends StatelessWidget {
  const EditItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(
          hint: 'title',
          maxLines: 2,
        ),
        SizedBox(
          height: 8,
        ),
        CustomTextField(
          hint: 'content',
          maxLines: 5,
        )
      ],
    );
  }
}
