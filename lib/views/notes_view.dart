import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants/colors.dart';
import 'package:note_app/constants/text_styles.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/widgets/add_note.dart';
import 'package:note_app/widgets/list_of_items.dart';
import 'package:note_app/widgets/cutom_iocn.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                context: context,
                builder: (context) {
                  return const AddNote();
                });
          },
          backgroundColor: AppColors.babyBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          forceMaterialTransparency: true,
          surfaceTintColor: Colors.transparent,
          title: const Text(
            'Notes',
            style: TextStyles.tilte,
          ),
          actions: const [
            CutomIocn(
              icon: Icons.search,
            )
          ],
        ),
        body: const ListOfItems());
  }
}
