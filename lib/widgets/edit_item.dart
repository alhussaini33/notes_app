import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/edit_colors_list.dart';

class EditItem extends StatelessWidget {
  const EditItem(
      {super.key,
      required this.titleController,
      required this.subTitileController});
  final TextEditingController titleController;
  final TextEditingController subTitileController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          CustomTextField(
            controller: titleController,
            hint: 'title',
            maxLines: 2,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            controller: subTitileController,
            hint: 'subTitle',
            maxLines: 5,
          ),
          EditColorsList()
        ],
      ),
    );
  }
}
