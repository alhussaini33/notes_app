import 'package:flutter/material.dart';
import 'package:note_app/constants/text_styles.dart';
import 'package:note_app/widgets/cutom_iocn.dart';
import 'package:note_app/widgets/edit_item.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          surfaceTintColor: Colors.transparent,
          title: const Text(
            'Edit Note',
            style: TextStyles.tilte,
          ),
          actions: const [CutomIocn(icon: Icons.done)],
        ),
        body: EditItem());
  }
}
