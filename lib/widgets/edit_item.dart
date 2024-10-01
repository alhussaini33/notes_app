import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditItem extends StatelessWidget {
  const EditItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          CustomTextField(
            hint: 'title',
            maxLines: 2,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
