// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) =>
    CategoriesModel(
      categories_id: (json['categories_id'] as num?)?.toInt(),
      categories_name: json['categories_name'] as String?,
      categories_image: json['categories_image'] as String?,
      categories_date_time: json['categories_date_time'] as String?,
    );

Map<String, dynamic> _$CategoriesModelToJson(CategoriesModel instance) =>
    <String, dynamic>{
      'categories_id': instance.categories_id,
      'categories_name': instance.categories_name,
      'categories_image': instance.categories_image,
      'categories_date_time': instance.categories_date_time,
    };
