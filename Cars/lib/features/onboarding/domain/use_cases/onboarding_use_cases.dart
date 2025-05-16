import 'package:cars/core/apiresult.dart';
import 'package:cars/features/onboarding/domain/domain_repositories/onboarding_repositories.dart';
import 'package:cars/features/onboarding/domain/entites/onboarding_entites.dart';

class OnboardingUseCases {
  final OnboardingDomainRepositoriesImp domainRepositories;
  OnboardingUseCases({required this.domainRepositories});
  Apiresult<List<OnboardingEntites>> onBoardingList() {
    return domainRepositories.getOnBoardingDetails();
  }
}
