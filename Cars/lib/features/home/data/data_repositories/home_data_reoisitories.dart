import 'package:cars/core/apiresult.dart';
import 'package:cars/core/network_exceptions.dart';
import 'package:cars/features/home/data/data_source/remote_data_source.dart';
import 'package:cars/features/home/data/model/categories_model.dart';
import 'package:cars/features/home/data/model/home_model.dart';
import 'package:cars/features/home/domain/domain_repositories/home_domain_repo.dart';
import 'package:cars/features/home/domain/entities/home_entities.dart';

class HomeDataReoisitories implements HomeDomainRepo {
  final RemoteDataSource remoteDataSource;
  HomeDataReoisitories({required this.remoteDataSource});
  @override
  Future<Apiresult<List<HomeEntities>>> getAllData() async {
    try {
      List<HomeModel> response = await remoteDataSource.getAllData();
      return Apiresult.success(response);
    } catch (dioException) {
      return Apiresult.failure(NetworkExceptions.getDioException(dioException));
    }
  }

  @override
  Future<Apiresult<List<CategoriesModel>>> getAllCategories() async {
    try {
      List<CategoriesModel> response =
          await remoteDataSource.getAllCategories();
      return Apiresult.success(response);
    } catch (dioException) {
      return Apiresult.failure(NetworkExceptions.getDioException(dioException));
    }
  }
}
