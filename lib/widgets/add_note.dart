import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const CustomTextField()
          ],
        ),
      ),
    );
  }
}
