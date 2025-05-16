import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarImageShape extends StatelessWidget {
  const CarImageShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      height: 270.h,
      width: double.infinity,
      child: Image.asset(
          "assets/images/photo_2025-05-06_06-36-40-removebg-preview (1).png"),
    );
  }
}
