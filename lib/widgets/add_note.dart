import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:note_app/helper/functions/show_snack_bar.dart';
import 'package:note_app/widgets/add_note_form.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            Functions functions = Functions();
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
              functions.showSnackBar(context, 'adding succses');
            }

            if (state is AddNoteFauiler) {
              functions.showSnackBar(context, state.errMrssage);
              print(state.errMrssage);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: AddNoteForm());
          },
        ),
      ),
    );
  }
}
