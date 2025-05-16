import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarDescription extends StatelessWidget {
  final String carDescription;
  const CarDescription({super.key, required this.carDescription});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.centerRight,
        child: Text(": الوصف",
            style: TextStyle(
                fontSize: 21.sp,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 97, 94, 94),
                fontFamily: "Lateef")),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
            textAlign: TextAlign.end,
            carDescription,
            style: TextStyle(
                height: 0.75.h,
                fontSize: 21.sp,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
                fontFamily: "Lateef")),
      ),
    ]);
  }
}
