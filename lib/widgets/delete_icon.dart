import 'package:flutter/material.dart';

class DeleteIcon extends StatelessWidget {
  const DeleteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Icon(
        Icons.delete_rounded,
        size: 40,
        color: Colors.black,
      ),
    );
  }
}
