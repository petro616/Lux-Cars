import 'package:cars/core/apiresult.dart';
import 'package:cars/features/home/data/data_repositories/home_data_reoisitories.dart';
import 'package:cars/features/home/data/model/categories_model.dart';
import 'package:cars/features/home/domain/entities/home_entities.dart';

abstract class HomeDomainRepo {
  Future<Apiresult<List<HomeEntities>>> getAllData();
  Future<Apiresult<List<CategoriesModel>>> getAllCategories();
}

class HomeDomainRepoImp extends HomeDomainRepo {
  final HomeDataReoisitories homeDataReoisitories;
  HomeDomainRepoImp({required this.homeDataReoisitories});
  @override
  Future<Apiresult<List<HomeEntities>>> getAllData() {
    return homeDataReoisitories.getAllData();
  }

  @override
  Future<Apiresult<List<CategoriesModel>>> getAllCategories() {
    return homeDataReoisitories.getAllCategories();
  }
}
