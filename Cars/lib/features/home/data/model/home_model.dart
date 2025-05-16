import 'package:cars/features/home/domain/entities/home_entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel extends HomeEntities {
  HomeModel({
    required super.cars_id,
    required super.cars_name,
    required super.cars_image,
    required super.cars_price,
    required super.cars_description,
    required super.cars_state,
    required super.cars_region,
    required super.cars_type,
    required super.cars_gear,
    required super.cars_create_year,
    required super.cars_color,
    required super.cars_diesel,
    required super.cars_how_cc,
    required super.cars_color_state,
    required super.cars_surface,
    required super.cars_thing,
    required super.cars_kilometrage,
    required super.cars_isfeatured,
    required super.cars_catego,
    required super.categories_id,
    required super.categories_name,
    required super.categories_image,
    required super.categories_date_time,
    required super.products_id,
    required super.products_itemsId,
    required super.products_image2,
    required super.products_image3,
    required super.products_image4,
    required super.products_image5,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}
