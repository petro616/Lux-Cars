import 'package:cars/core/constants/onboarding_images.dart';
import 'package:cars/features/onboarding/data/models/onboarding_model.dart';

class OnBoardingLocalDataSource {
  List<OnboardingModel> onBoardingList() {
    return [
      OnboardingModel(
          title: "LuxCar",
          subTitle: "Discover the Art of\nLuxury Car",
          image: AppImage.onboardingImageOne),
    ];
  }
}
