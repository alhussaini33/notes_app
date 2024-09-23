import 'package:flutter/material.dart';
import 'package:note_app/constants/text_styles.dart';

class ItemDescreption extends StatelessWidget {
  const ItemDescreption({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Flutter Tips',
            style: TextStyles.noteTitle,
          ),
          const SizedBox(
            height: 35,
          ),
          RichText(
            textAlign: TextAlign.start,
            text: const TextSpan(children: [
              TextSpan(
                  text: 'Build your Carrer with \n',
                  style: TextStyles.noteSubTitle),
              TextSpan(text: 'Tharawat Samy', style: TextStyles.noteSubTitle)
            ]),
          )
        ],
      ),
    );
  }
}
