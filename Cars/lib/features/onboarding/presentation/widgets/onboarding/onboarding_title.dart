import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingTitle extends StatelessWidget {
  final String title;
  const OnboardingTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.h, left: 12.w),
      child: Row(
        spacing: 1.w,
        children: [
          SizedBox(
              height: 35.h,
              width: 35.w,
              child: Image.asset(
                "assets/images/ChatGPT Image May 4, 2025, 05_09_17 AM.png",
                fit: BoxFit.cover,
              )),
          Text(
            title,
            style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
                fontSize: 15.sp),
          ),
        ],
      ),
    );
  }
}
