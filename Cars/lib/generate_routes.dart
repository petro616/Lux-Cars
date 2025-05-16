import 'package:cars/core/constants/named_routes.dart';
import 'package:cars/features/home/domain/entities/categories_entities.dart';
import 'package:cars/features/home/presentation/screens/car_details.dart';
import 'package:cars/features/home/domain/entities/home_entities.dart';
import 'package:cars/features/home/presentation/screens/categories.dart';
import 'package:cars/features/home/presentation/screens/privacy_policy.dart';
import 'package:cars/features/onboarding/presentation/screens/onboarding.dart';
import 'package:cars/features/home/presentation/screens/home.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => Onboarding());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => Home());
      case Routes.carDetails:
        final argument = settings.arguments as HomeEntities;
        HomeEntities entity = argument;
        return MaterialPageRoute(
            builder: (_) => CarDetails(
                  cars: entity,
                ));
      case Routes.categories:
        final args = settings.arguments as Map<String, dynamic>;

        final List<HomeEntities> cars = args["cars"];
        final CategoriesEntities category = args["category"];

        return MaterialPageRoute(
          builder: (_) => Categories(
            cars: cars,
            categoriesEntities: category,
          ),
        );
      case Routes.privacyAndPolicy:
        return MaterialPageRoute(builder: (_) => PrivacyPolicyPage());
      default:
        return null;
    }
  }
}
