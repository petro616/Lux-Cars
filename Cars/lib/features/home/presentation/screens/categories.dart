import 'package:cars/core/constants/image_network_routes.dart';
import 'package:cars/core/constants/named_routes.dart';
import 'package:cars/features/home/domain/entities/categories_entities.dart';
import 'package:cars/features/home/domain/entities/home_entities.dart';
import 'package:cars/features/home/presentation/widgets/home_page/vertical_cars_list_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Categories extends StatefulWidget {
  final List<HomeEntities> cars;
  final CategoriesEntities categoriesEntities;
  const Categories(
      {super.key, required this.cars, required this.categoriesEntities});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    List<HomeEntities> filteredCars = widget.cars.where((car) {
      return car.cars_catego == widget.categoriesEntities.categories_id;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.categoriesEntities.categories_name!,
          style: TextStyle(
            fontSize: 23.w,
            fontWeight: FontWeight.bold,
            fontFamily: "BebasNeue",
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.r),
        ),
        toolbarHeight: 46.h,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 20,
        shadowColor: Colors.blue[300],
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: filteredCars.length,
          padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final car = filteredCars[index];
            return VerticalCarsListShape(
              position: index,
              carImage: "${ImageNetworkRoutes.imageBaseCars}${car.cars_image}",
              carName: car.cars_name!,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.carDetails,
                  arguments: car,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
