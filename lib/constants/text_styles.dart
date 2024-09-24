import 'package:flutter/material.dart';
import 'package:note_app/constants/colors.dart';

class TextStyles {
  static const tilte = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static const noteTitle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static final noteSubTitle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: AppColors.secondaryBlack,
      height: 1.5);
}
