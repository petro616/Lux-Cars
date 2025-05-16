import 'package:cars/core/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
sealed class HomeState<T> with _$HomeState<T> {
  factory HomeState.idle() = Idle<T>;
  factory HomeState.loading() = Loading<T>;
  factory HomeState.failure(NetworkExceptions error) = Failure<T>;
  factory HomeState.CategoryLoadedList(List<T> data) = CategoryLoadedList<T>;
  factory HomeState.LoadedList({
    required List<T> featuredCars,
    required List<T> nonFeaturedCars,
  }) = LoadedList<T>;
}
