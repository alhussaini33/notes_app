import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: "title ",
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'descreption',
            maxLines: 7,
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
