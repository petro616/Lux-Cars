import 'package:cars/core/apiresult.dart';
import 'package:cars/features/home/domain/domain_repositories/home_domain_repo.dart';
import 'package:cars/features/home/domain/entities/home_entities.dart';

class HomeUseCase {
  final HomeDomainRepoImp homeDomainRepoImp;
  HomeUseCase({required this.homeDomainRepoImp});
  Future<Apiresult<List<HomeEntities>>> getAllData() {
    return homeDomainRepoImp.getAllData();
  }
}
