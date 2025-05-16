import 'package:cars/core/apiresult.dart';
import 'package:cars/core/network_exceptions.dart';
import 'package:cars/features/home/domain/entities/categories_entities.dart';
import 'package:cars/features/home/domain/use_cases/categories_use_case.dart';
import 'package:cars/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesCubit extends Cubit<HomeState<CategoriesEntities>> {
  final CategoriesUseCase useCase;
  CategoriesCubit({required this.useCase}) : super(Idle());
  getAllCategories() async {
    emit(Loading());
    Apiresult<List<CategoriesEntities>> response =
        await useCase.getAllCategories();
    response.when(success: (List<CategoriesEntities> categoriesList) {
      emit(CategoryLoadedList(categoriesList));
    }, failure: (NetworkExceptions errors) {
      emit(Failure(errors));
    });
  }
}
