import 'package:cars/core/apiresult.dart';
import 'package:cars/features/onboarding/data/data_repositories/repositories.dart';
import 'package:cars/features/onboarding/domain/entites/onboarding_entites.dart';

abstract class OnboardingDomainRepositories {
  Apiresult<List<OnboardingEntites>> getOnBoardingDetails();
}

class OnboardingDomainRepositoriesImp extends OnboardingDomainRepositories {
  final OnBoardingDataRepositories onBoardingDataRepositories;
  OnboardingDomainRepositoriesImp({required this.onBoardingDataRepositories});
  @override
  Apiresult<List<OnboardingEntites>> getOnBoardingDetails() {
    return onBoardingDataRepositories.getOnBoardingDetails();
  }
}
