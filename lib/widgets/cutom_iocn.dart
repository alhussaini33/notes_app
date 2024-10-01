import 'package:flutter/material.dart';
import 'package:note_app/constants/colors.dart';

class CutomIocn extends StatelessWidget {
  const CutomIocn({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      margin: const EdgeInsets.only(right: 12), // مسافة بين الحافة اليمنى
      // لتصغير حجم الـ Container
      decoration: BoxDecoration(
        color: AppColors.gray, // لون الخلفية
        borderRadius: BorderRadius.circular(12), // جعل الحواف دائرية
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon),
          color: Colors.white, // لون الأيقونة
        ),
      ),
    );
  }
}
