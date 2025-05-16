import 'package:equatable/equatable.dart';

class OnboardingEntites extends Equatable {
  final String title;
  final String subTitle;
  final String image;
  const OnboardingEntites(
      {required this.title, required this.subTitle, required this.image});

  @override
  List<Object?> get props => [title, subTitle, image];
}
