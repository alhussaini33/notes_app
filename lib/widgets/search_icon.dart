import 'package:flutter/material.dart';
import 'package:note_app/constants/colors.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12), // مسافة بين الحافة اليمنى
      padding: const EdgeInsets.all(8), // لتصغير حجم الـ Container
      decoration: BoxDecoration(
        color: AppColors.gray, // لون الخلفية
        borderRadius: BorderRadius.circular(12), // جعل الحواف دائرية
      ),
      child: const Icon(
        Icons.search,
        color: Colors.white, // لون الأيقونة
      ),
    );
  }
}
