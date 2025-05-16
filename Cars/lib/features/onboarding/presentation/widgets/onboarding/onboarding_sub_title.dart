import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingSubTitle extends StatelessWidget {
  final String subTitle;
  const OnboardingSubTitle({super.key, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 73.h, left: 20.w),
      child: Text(
        subTitle,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25.sp),
      ),
    );
  }
}
