import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/variables.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(Variables.noteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesaApp());
}

class NotesaApp extends StatelessWidget {
  const NotesaApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: const NotesView(),
      ),
    );
  }
}
