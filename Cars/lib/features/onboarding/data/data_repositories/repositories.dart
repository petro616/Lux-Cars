import 'package:cars/core/apiresult.dart';
import 'package:cars/features/onboarding/data/data_source/local_data_source.dart';
import 'package:cars/features/onboarding/data/models/onboarding_model.dart';
import 'package:cars/features/onboarding/domain/domain_repositories/onboarding_repositories.dart';
import 'package:cars/features/onboarding/domain/entites/onboarding_entites.dart';

class OnBoardingDataRepositories implements OnboardingDomainRepositories {
  final OnBoardingLocalDataSource onBoardingLocalDataSource;
  OnBoardingDataRepositories({required this.onBoardingLocalDataSource});
  @override
  Apiresult<List<OnboardingEntites>> getOnBoardingDetails() {
    List<OnboardingModel> onBoardingList =
        onBoardingLocalDataSource.onBoardingList();
    return Apiresult.success(onBoardingList);
  }
}
