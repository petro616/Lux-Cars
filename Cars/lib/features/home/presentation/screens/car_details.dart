import 'package:cars/core/constants/image_network_routes.dart';
import 'package:cars/core/dialog.dart';
import 'package:cars/features/home/domain/entities/home_entities.dart';
import 'package:cars/features/home/presentation/widgets/car_details/car_description.dart';
import 'package:cars/features/home/presentation/widgets/car_details/car_price.dart';
import 'package:cars/features/home/presentation/widgets/car_details/cars_images_shape.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class CarDetails extends StatefulWidget {
  final HomeEntities cars;
  const CarDetails({super.key, required this.cars});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    HomeEntities car = widget.cars;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          car.cars_name!,
          style: TextStyle(
            fontSize: 22.w,
            fontWeight: FontWeight.bold,
            fontFamily: "BebasNeue",
          ),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
        toolbarHeight: 45.h,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 20,
        shadowColor: Colors.blue[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25.h),
            CarsImagesShape(images: [
              "${ImageNetworkRoutes.imageBaseCars}${car.cars_image}",
              "${ImageNetworkRoutes.imageBaseCars}${car.products_image2}",
              "${ImageNetworkRoutes.imageBaseCars}${car.products_image3}",
              "${ImageNetworkRoutes.imageBaseCars}${car.products_image4}",
              "${ImageNetworkRoutes.imageBaseCars}${car.products_image5}",
            ]),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.all(10.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CarPrice(carPrice: "${car.cars_price}"),
                  CarDescription(carDescription: "${car.cars_description}"),
                  SizedBox(height: 18.h),
                  Wrap(
                    spacing: 20.w,
                    runSpacing: 18.h,
                    children: [
                      _buildCard("فئة السيارة", car.cars_type!,
                          Icons.stacked_bar_chart_rounded),
                      _buildCard("بلد المنشأ", car.cars_region!, Icons.flag),
                      _buildCard("سعة المحرك", car.cars_how_cc!,
                          Icons.energy_savings_leaf_outlined),
                      _buildCard("سنة الصنع", car.cars_create_year!,
                          Icons.edit_calendar_outlined),
                      _buildCard("ناقل الحركة", car.cars_gear!, Icons.settings),
                      _buildCard("اللون", car.cars_color!, Icons.color_lens),
                      _buildCard(
                          "الوقود", car.cars_diesel!, Icons.local_gas_station),
                      _buildCard("حالة الطلاء", car.cars_color_state!,
                          Icons.format_paint),
                      _buildCard(
                          "سقف السيارة", car.cars_surface!, Icons.wb_sunny),
                      _buildCard("حالة السيارة", car.cars_state!,
                          Icons.stairs_outlined),
                      _buildCard("مميزات", car.cars_thing!, Icons.star),
                      _buildCard(
                          "كيلومتراج", car.cars_kilometrage!, Icons.speed),
                    ],
                  ),
                  SizedBox(height: 23.h),
                  MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      color: Colors.blueGrey,
                      minWidth: double.infinity,
                      height: 50.h,
                      onPressed: () async {
                        final Uri url = Uri.parse("https://wa.me/963939140515");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url,
                              mode: LaunchMode.externalApplication);
                        } else {
                          showDialogs(context);
                        }
                      },
                      child: Row(
                        spacing: 18.w,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            EvaIcons.phoneCall,
                            color: Colors.white,
                          ),
                          Text(
                            "تواصل لحجز السيارة",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.w,
                                fontFamily: "Lateef"),
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String label, String value, IconData icon) {
    return Container(
      width: 150.w,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 4,
              offset: const Offset(2, 2))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: const Color.fromARGB(255, 190, 184, 184)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(label,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              Text(value,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 17.5.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontFamily: "Lateef"))
            ],
          ),
        ],
      ),
    );
  }
}
