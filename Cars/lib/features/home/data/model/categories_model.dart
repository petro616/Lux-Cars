import 'package:cars/features/home/domain/entities/categories_entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'categories_model.g.dart';

@JsonSerializable()
class CategoriesModel extends CategoriesEntities {
  CategoriesModel(
      {required super.categories_id,
      required super.categories_name,
      required super.categories_image,
      required super.categories_date_time});
  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesModelToJson(this);
}
