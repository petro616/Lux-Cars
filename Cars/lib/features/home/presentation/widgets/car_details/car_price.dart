import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarPrice extends StatelessWidget {
  final String carPrice;
  const CarPrice({super.key, required this.carPrice});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5.w,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(top: 3.h),
          child: Text(carPrice,
              style: TextStyle(
                  fontSize: 21.5.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[800],
                  fontFamily: "CalSans")),
        ),
        Text(": السعر",
            style: TextStyle(
                fontSize: 21.sp,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 97, 94, 94),
                fontFamily: "Lateef")),
      ],
    );
  }
}
