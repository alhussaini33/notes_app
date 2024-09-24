import 'package:flutter/material.dart';

class DeleteIcon extends StatelessWidget {
  const DeleteIcon({super.key, required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.delete_rounded,
        size: size,
        color: Colors.black,
      ),
    );
  }
}
