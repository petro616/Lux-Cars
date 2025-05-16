import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StaticShapeOne extends StatelessWidget {
  const StaticShapeOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.black,
                Colors.blueGrey,
              ]),
        ),
        width: double.infinity,
        height: 300.h,
        child: Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(left: 20.w, top: 25.h),
          child: Column(
            children: [
              Row(
                spacing: 1.w,
                children: [
                  Text(
                    "L u x C a r",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ),
                  SizedBox(
                      height: 35.h,
                      width: 35.w,
                      child: Image.asset(
                        "assets/images/ChatGPT Image May 4, 2025, 05_09_17 AM.png",
                        fit: BoxFit.cover,
                      )),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your Car Dream Now\nTake IT Real ...",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp),
                ),
              )
            ],
          ),
        ));
  }
}
