import 'package:cars/core/apiresult.dart';
import 'package:cars/core/network_exceptions.dart';
import 'package:cars/features/onboarding/domain/entites/onboarding_entites.dart';
import 'package:cars/features/onboarding/domain/use_cases/onboarding_use_cases.dart';
import 'package:cars/features/onboarding/presentation/cubit/onboarding_state.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<OnboardingState<List<OnboardingEntites>>> {
  final OnboardingUseCases useCases;
  OnboardingCubit({required this.useCases}) : super(Idle());
  Future<void> checkOnboardingStatus() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final isOnboardingCompleted =
        sharedPreferences.getBool('isOnboardingCompleted');
    if (isOnboardingCompleted == true) {
      emit(Completed());
    } else {
      getOnBoarding();
    }
  }

  getOnBoarding() {
    Apiresult<List<OnboardingEntites>> onBoardingList =
        useCases.onBoardingList();
    onBoardingList.when(
        success: (List<OnboardingEntites> data) {
          emit(Loaded(data));
        },
        failure: (NetworkExceptions error) {});
  }

  Future<void> completeOnboarding() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('isOnboardingCompleted', true);
    emit(Completed());
  }
}
