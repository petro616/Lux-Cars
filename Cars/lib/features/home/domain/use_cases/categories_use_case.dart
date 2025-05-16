import 'package:cars/core/apiresult.dart';
import 'package:cars/features/home/domain/domain_repositories/home_domain_repo.dart';
import 'package:cars/features/home/domain/entities/categories_entities.dart';

class CategoriesUseCase {
  final HomeDomainRepoImp homeDomainRepoImp;
  CategoriesUseCase({required this.homeDomainRepoImp});

  Future<Apiresult<List<CategoriesEntities>>> getAllCategories() {
    return homeDomainRepoImp.getAllCategories();
  }
}
