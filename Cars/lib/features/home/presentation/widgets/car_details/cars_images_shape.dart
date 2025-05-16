import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarsImagesShape extends StatelessWidget {
  final List images;
  const CarsImagesShape({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 192.h,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(30.r),
            child: AspectRatio(
                aspectRatio: 16 / 9,
                child: CachedNetworkImage(
                  imageUrl: images[index],
                  fit: BoxFit.cover,
                )),
          );
        },
        viewportFraction: 0.90,
        scale: 0.95,
        itemCount: images.length,
        pagination: SwiperPagination(
          margin: EdgeInsets.only(top: 10.h, bottom: 1.6.h),
          builder: DotSwiperPaginationBuilder(
              activeColor: Colors.black,
              color: Colors.blueGrey,
              size: 6.w,
              activeSize: 6.w),
        ),
        onTap: (index) {
          showDialog(
            context: context,
            builder: (_) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.r)),
                backgroundColor: Colors.grey[400],
                insetPadding: EdgeInsets.all(10.w),
                child: SizedBox(
                  width: double.infinity,
                  height: 240.h,
                  child: Stack(
                    children: [
                      PageView.builder(
                        controller: PageController(initialPage: index),
                        itemCount: images.length,
                        itemBuilder: (context, i) {
                          return InteractiveViewer(
                            panEnabled: true,
                            minScale: 1,
                            maxScale: 4,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100.r),
                              child: CachedNetworkImage(
                                imageUrl: images[i],
                                fit: BoxFit.contain,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
