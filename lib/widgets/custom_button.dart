import 'package:flutter/material.dart';
import 'package:note_app/constants/colors.dart';
import 'package:note_app/constants/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          fixedSize: WidgetStatePropertyAll(
            Size(width, 50),
          ),
          backgroundColor: const WidgetStatePropertyAll(AppColors.mint),
        ),
        child: const Text(
          'Add Note',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
    );
  }
}
