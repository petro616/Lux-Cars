import 'package:cars/core/constants/image_network_routes.dart';
import 'package:cars/core/constants/named_routes.dart';
import 'package:cars/core/loading.dart';
import 'package:cars/core/network_exceptions.dart';
import 'package:cars/features/home/domain/entities/categories_entities.dart';
import 'package:cars/features/home/domain/entities/home_entities.dart';
import 'package:cars/features/home/presentation/cubit/categories_cubit.dart';
import 'package:cars/features/home/presentation/cubit/home_cubit.dart';
import 'package:cars/features/home/presentation/cubit/home_state.dart';
import 'package:cars/features/home/presentation/widgets/home_page/brands_shape.dart';
import 'package:cars/features/home/presentation/widgets/home_page/car_image_shape.dart';
import 'package:cars/features/home/presentation/widgets/home_page/horizintal_cars_list_shape.dart';
import 'package:cars/features/home/presentation/widgets/home_page/pop_menu_buttons.dart';
import 'package:cars/features/home/presentation/widgets/home_page/search_bar.dart';
import 'package:cars/features/home/presentation/widgets/home_page/static_shape_one.dart';
import 'package:cars/features/home/presentation/widgets/home_page/vertical_cars_list_shape.dart';
import 'package:cars/features/home/presentation/widgets/home_page/white_space_elements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = TextEditingController();
  late ScrollController _scrollController;
  bool _pageViewShrinked = false;

  @override
  void initState() {
    super.initState();

    context.read<CategoriesCubit>().getAllCategories();
    context.read<HomeCubit>().getAllData();

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset > 300 && !_pageViewShrinked) {
        setState(() {
          _pageViewShrinked = true;
        });
      } else if (_scrollController.offset <= 300 && _pageViewShrinked) {
        setState(() {
          _pageViewShrinked = false;
        });
      }
    });

    searchController.addListener(() {
      final query = searchController.text.trim();
      if (query.isEmpty) {
        context.read<HomeCubit>().resetFilter();
      } else {
        context.read<HomeCubit>().filterCars(query);
      }
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StaticShapeOne(),
          WhiteSpaceElements(),
          CarImageShape(),
          PopMenuButtons(),
          Container(
            margin: EdgeInsets.only(top: 179.h),
            child: ListView(
              controller: _scrollController,
              children: [
                // Search Bar
                SearchBars(
                  titlehintText: "SEARCH",
                  onChanged: (val) {}, // Logic handled in listener
                  mycontroller: searchController,
                ),
                SizedBox(height: 5.h),

                // Brands section
                BlocBuilder<CategoriesCubit, HomeState<CategoriesEntities>>(
                  builder: (context, state) {
                    return state.when(
                      idle: () => const SizedBox.shrink(),
                      loading: () =>
                          SizedBox(height: 50.h, child: LoadingWidget()),
                      failure: (error) =>
                          Text(NetworkExceptions.getErrorMessage(error)),
                      CategoryLoadedList: (data) {
                        final allCars = context.read<HomeCubit>().allCars;
                        return SizedBox(
                          height: 105.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: data.length,
                            itemBuilder: (context, i) {
                              return BrandsShape(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.categories,
                                      arguments: {
                                        "category": data[i],
                                        "cars": allCars,
                                      });
                                },
                                brandImage:
                                    "${ImageNetworkRoutes.imageBaseCategories}${data[i].categories_image}",
                                brandName: data[i].categories_name!,
                              );
                            },
                          ),
                        );
                      },
                      LoadedList: (_, __) => const SizedBox.shrink(),
                    );
                  },
                ),

                // Horizontal Cars List
                BlocBuilder<HomeCubit, HomeState<HomeEntities>>(
                  builder: (context, state) {
                    return state.when(
                      idle: () => const SizedBox.shrink(),
                      loading: () =>
                          SizedBox(height: 300.h, child: LoadingWidget()),
                      failure: (error) =>
                          Text(NetworkExceptions.getErrorMessage(error)),
                      LoadedList: (featuredCars, notFeaturedCars) {
                        return SizedBox(
                          height: 190.h,
                          child: PageView.builder(
                            itemCount: notFeaturedCars.length,
                            controller:
                                PageController(viewportFraction: 0.79.w),
                            onPageChanged: (index) =>
                                setState(() => currentPage = index),
                            itemBuilder: (context, index) {
                              final car = notFeaturedCars[index];
                              bool isCurrent = index == currentPage;
                              double scale = _pageViewShrinked
                                  ? 0.9
                                  : (isCurrent ? 1.0 : 0.9);
                              return HorizintalCarsListShape(
                                scale: scale,
                                carImage:
                                    "${ImageNetworkRoutes.imageBaseCars}${car.cars_image}",
                                carName: car.cars_name!,
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.carDetails,
                                      arguments: car);
                                },
                              );
                            },
                          ),
                        );
                      },
                      CategoryLoadedList: (_) => SizedBox.shrink(),
                    );
                  },
                ),

                SizedBox(height: 8.h),

                // Vertical Cars List
                BlocBuilder<HomeCubit, HomeState<HomeEntities>>(
                  builder: (context, state) {
                    return state.when(
                      idle: () => const SizedBox.shrink(),
                      loading: () =>
                          SizedBox(height: 300.h, child: LoadingWidget()),
                      failure: (error) =>
                          Text(NetworkExceptions.getErrorMessage(error)),
                      LoadedList: (featuredCars, _) {
                        return SizedBox(
                          height: 294.h,
                          child: AnimationLimiter(
                            child: ListView.builder(
                              itemCount: featuredCars.length,
                              padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                final car = featuredCars[index];
                                return VerticalCarsListShape(
                                  position: index,
                                  carImage:
                                      "${ImageNetworkRoutes.imageBaseCars}${car.cars_image}",
                                  carName: car.cars_name!,
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, Routes.carDetails,
                                        arguments: car);
                                  },
                                );
                              },
                            ),
                          ),
                        );
                      },
                      CategoryLoadedList: (_) => SizedBox.shrink(),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
