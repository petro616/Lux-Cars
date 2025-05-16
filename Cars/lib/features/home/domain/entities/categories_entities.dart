import 'package:equatable/equatable.dart';

class CategoriesEntities extends Equatable {
  final int? categories_id;
  final String? categories_name;
  final String? categories_image;
  final String? categories_date_time;
  CategoriesEntities(
      {required this.categories_id,
      required this.categories_name,
      required this.categories_image,
      required this.categories_date_time});

  @override
  List<Object?> get props =>
      [categories_id, categories_name, categories_image, categories_date_time];
}
