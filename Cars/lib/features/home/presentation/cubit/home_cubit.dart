import 'package:cars/core/apiresult.dart';
import 'package:cars/core/network_exceptions.dart';
import 'package:cars/features/home/domain/entities/home_entities.dart';
import 'package:cars/features/home/domain/use_cases/home_use_case.dart';
import 'package:cars/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState<HomeEntities>> {
  final HomeUseCase useCase;
  HomeCubit({required this.useCase}) : super(Idle());

  List<HomeEntities> allCars = [];
  List<HomeEntities> featured = [];
  List<HomeEntities> notFeatured = [];

  Future<void> getAllData() async {
    emit(Loading());
    Apiresult<List<HomeEntities>> response = await useCase.getAllData();
    response.when(
      success: (List<HomeEntities> data) {
        featured = data.where((car) => car.cars_isfeatured == 1).toList();
        notFeatured = data.where((car) => car.cars_isfeatured == 0).toList();
        allCars = [...featured, ...notFeatured];

        emit(LoadedList(featuredCars: featured, nonFeaturedCars: notFeatured));
      },
      failure: (NetworkExceptions errors) => emit(Failure(errors)),
    );
  }

  void filterCars(String query) {
    final lowerQuery = query.toLowerCase();

    final filteredFeatured = featured
        .where((car) => car.cars_name!.toLowerCase().contains(lowerQuery))
        .toList();

    final filteredNotFeatured = notFeatured
        .where((car) => car.cars_name!.toLowerCase().contains(lowerQuery))
        .toList();

    emit(LoadedList(
      featuredCars: filteredFeatured,
      nonFeaturedCars: filteredNotFeatured,
    ));
  }

  void resetFilter() {
    emit(LoadedList(featuredCars: featured, nonFeaturedCars: notFeatured));
  }
}

// import 'package:cars/core/apiresult.dart';
// import 'package:cars/core/network_exceptions.dart';
// import 'package:cars/features/home/domain/entities/home_entities.dart';
// import 'package:cars/features/home/domain/use_cases/home_use_case.dart';
// import 'package:cars/features/home/presentation/cubit/home_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class HomeCubit extends Cubit<HomeState<HomeEntities>> {
//   final HomeUseCase useCase;
//   HomeCubit({required this.useCase}) : super(Idle());

//   List<HomeEntities> allCars = [];

//   Future<void> getAllData() async {
//     emit(Loading());
//     Apiresult<List<HomeEntities>> response = await useCase.getAllData();
//     response.when(
//       success: (List<HomeEntities> data) {
//         final featured = data.where((car) => car.cars_isfeatured == 1).toList();
//         final notFeatured =
//             data.where((car) => car.cars_isfeatured == 0).toList();

//         allCars = {...featured, ...notFeatured}.toList();

//         emit(LoadedList(
//           featuredCars: featured,
//           nonFeaturedCars: notFeatured,
//         ));
//       },
//       failure: (NetworkExceptions errors) => emit(Failure(errors)),
//     );
//   }
// }
