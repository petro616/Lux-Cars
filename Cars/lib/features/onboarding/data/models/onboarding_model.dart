import 'package:cars/features/onboarding/domain/entites/onboarding_entites.dart';
import 'package:json_annotation/json_annotation.dart';
part 'onboarding_model.g.dart';

@JsonSerializable()
class OnboardingModel extends OnboardingEntites {
  const OnboardingModel(
      {required super.title, required super.subTitle, required super.image});
  factory OnboardingModel.fromJson(List json) =>
      _$OnboardingModelFromJson(json as Map<String, dynamic>);
  Map<String, dynamic> toJson() => _$OnboardingModelToJson(this);
}
