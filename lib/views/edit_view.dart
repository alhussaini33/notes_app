import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants/text_styles.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/cutom_iocn.dart';
import 'package:note_app/widgets/edit_item.dart';

class EditView extends StatefulWidget {
  const EditView({super.key});

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  @override
  Widget build(BuildContext context) {
    final NoteModel? note = BlocProvider.of<NotesCubit>(context).selectedNote;
    final TextEditingController titleController =
        TextEditingController(text: note?.title);
    final TextEditingController subTitileController =
        TextEditingController(text: note?.subTitle);
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          surfaceTintColor: Colors.transparent,
          title: const Text(
            'Edit Note',
            style: TextStyles.tilte,
          ),
          actions: [
            CutomIocn(
              icon: Icons.done,
              onpressed: () {
                if (formKey.currentState?.validate() == true) {
                  if (note != null) {
                    final updatedNote = note.copyWith(
                        title: titleController.text, // نص العنوان المدخل
                        content: subTitileController.text,
                        color: BlocProvider.of<NotesCubit>(context)
                            .selectedColor
                            .value // نص المحتوى المدخل
                        );

                    BlocProvider.of<NotesCubit>(context)
                        .updateNote(updatedNote, note.key);
                  }
                }
              },
            )
          ],
        ),
        body: Form(
            key: formKey,
            child: EditItem(
              titleController: titleController,
              subTitileController: subTitileController,
            )));
  }
}
