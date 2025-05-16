import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandsShape extends StatelessWidget {
  final void Function() onTap;
  final String brandImage;
  final String brandName;
  const BrandsShape(
      {super.key,
      required this.onTap,
      required this.brandImage,
      required this.brandName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[600]!, width: 1.5.w),
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(100.r),
            ),
            margin: EdgeInsets.only(left: 10.w, right: 5.w, top: 12.h),
            height: 60.h,
            width: 90.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.r),
              child: CachedNetworkImage(
                imageUrl: brandImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 5.w),
          child: Text(
            brandName,
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
