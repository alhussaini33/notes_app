import 'package:flutter/material.dart';
import 'package:note_app/constants/text_styles.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/cutom_iocn.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        surfaceTintColor: Colors.transparent,
        title: const Text(
          'Edit Note',
          style: TextStyles.tilte,
        ),
        actions: const [CutomIocn(icon: Icons.done)],
      ),
      body: const Column(
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
      ),
    );
  }
}
