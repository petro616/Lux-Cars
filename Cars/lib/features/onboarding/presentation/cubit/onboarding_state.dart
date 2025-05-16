import 'package:cars/features/onboarding/domain/entites/onboarding_entites.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'onboarding_state.freezed.dart';

@freezed
sealed class OnboardingState<T> with _$OnboardingState<T> {
  factory OnboardingState.idle() = Idle<T>;
  factory OnboardingState.loaded(List<OnboardingEntites> data) = Loaded<T>;
  factory OnboardingState.compeleted() = Completed<T>;
}
