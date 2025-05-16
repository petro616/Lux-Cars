import 'package:equatable/equatable.dart';

class HomeEntities extends Equatable {
  final int? cars_id;
  final String? cars_name;
  final String? cars_image;
  final String? cars_price;
  final String? cars_description;
  final String? cars_state;
  final String? cars_region;
  final String? cars_type;
  final String? cars_gear;
  final String? cars_create_year;
  final String? cars_color;
  final String? cars_diesel;
  final String? cars_how_cc;
  final String? cars_color_state;
  final String? cars_surface;
  final String? cars_thing;
  final String? cars_kilometrage;
  final int? cars_isfeatured;
  final int? cars_catego;
  final int? categories_id;
  final String? categories_name;
  final String? categories_image;
  final String? categories_date_time;
  final int? products_id;
  final int? products_itemsId;
  final String? products_image2;
  final String? products_image3;
  final String? products_image4;
  final String? products_image5;
  HomeEntities({
    required this.cars_id,
    required this.cars_name,
    required this.cars_image,
    required this.cars_price,
    required this.cars_description,
    required this.cars_state,
    required this.cars_region,
    required this.cars_type,
    required this.cars_gear,
    required this.cars_create_year,
    required this.cars_color,
    required this.cars_diesel,
    required this.cars_how_cc,
    required this.cars_color_state,
    required this.cars_surface,
    required this.cars_thing,
    required this.cars_kilometrage,
    required this.cars_isfeatured,
    required this.cars_catego,
    required this.categories_id,
    required this.categories_name,
    required this.categories_image,
    required this.categories_date_time,
    required this.products_id,
    required this.products_itemsId,
    required this.products_image2,
    required this.products_image3,
    required this.products_image4,
    required this.products_image5,
  });
  @override
  List<Object?> get props => [
        cars_id,
        cars_name,
        cars_image,
        cars_price,
        cars_description,
        cars_state,
        cars_region,
        cars_type,
        cars_gear,
        cars_create_year,
        cars_color,
        cars_diesel,
        cars_how_cc,
        cars_color_state,
        cars_surface,
        cars_thing,
        cars_kilometrage,
        cars_isfeatured,
        cars_catego,
        categories_id,
        categories_name,
        categories_image,
        categories_date_time,
        products_id,
        products_itemsId,
        products_image2,
        products_image3,
        products_image4,
        products_image5,
      ];
}
