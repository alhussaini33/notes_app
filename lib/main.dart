import 'package:flutter/material.dart';
import 'package:note_app/views/notes_view.dart';

void main() {
  runApp(const NotesaApp());
}

class NotesaApp extends StatelessWidget {
  const NotesaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true),
      home: const NotesView(),
    );
  }
}
