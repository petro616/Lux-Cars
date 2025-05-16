import 'package:cars/features/home/data/data_repositories/home_data_reoisitories.dart';
import 'package:cars/features/home/data/data_source/remote_data_source.dart';
import 'package:cars/features/home/domain/domain_repositories/home_domain_repo.dart';
import 'package:cars/features/home/domain/use_cases/categories_use_case.dart';
import 'package:cars/features/home/domain/use_cases/home_use_case.dart';
import 'package:cars/features/home/presentation/cubit/categories_cubit.dart';
import 'package:cars/features/home/presentation/cubit/home_cubit.dart';
import 'package:cars/features/onboarding/data/data_repositories/repositories.dart';
import 'package:cars/features/onboarding/data/data_source/local_data_source.dart';
import 'package:cars/features/onboarding/domain/domain_repositories/onboarding_repositories.dart';
import 'package:cars/features/onboarding/domain/use_cases/onboarding_use_cases.dart';
import 'package:cars/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void onBoardingGetIt() {
  getIt.registerSingleton<OnBoardingLocalDataSource>(
      OnBoardingLocalDataSource());
  getIt.registerSingleton<OnBoardingDataRepositories>(
      OnBoardingDataRepositories(onBoardingLocalDataSource: getIt.get()));
  getIt.registerSingleton<OnboardingDomainRepositoriesImp>(
      OnboardingDomainRepositoriesImp(onBoardingDataRepositories: getIt.get()));
  getIt.registerSingleton<OnboardingUseCases>(
      OnboardingUseCases(domainRepositories: getIt.get()));
  getIt.registerFactory<OnboardingCubit>(
      () => OnboardingCubit(useCases: getIt.get()));
}

void homeGetIt() {
  getIt.registerSingleton<RemoteDataSource>(
      RemoteDataSource(createAndSetupDio()));
  getIt.registerSingleton<HomeDataReoisitories>(
      HomeDataReoisitories(remoteDataSource: getIt.get()));
  getIt.registerSingleton<HomeDomainRepoImp>(
      HomeDomainRepoImp(homeDataReoisitories: getIt.get()));
  getIt.registerSingleton<HomeUseCase>(
      HomeUseCase(homeDomainRepoImp: getIt.get()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(useCase: getIt.get()));
  ////// Categories
  getIt.registerSingleton<CategoriesUseCase>(
      CategoriesUseCase(homeDomainRepoImp: getIt.get()));
  getIt.registerFactory<CategoriesCubit>(
      () => CategoriesCubit(useCase: getIt.get()));
}
