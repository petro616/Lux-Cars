import 'package:cars/features/home/data/model/categories_model.dart';
import 'package:cars/features/home/data/model/home_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_data_source.g.dart';

@RestApi(baseUrl: "http://192.168.43.4/cars_backend/")
abstract class RemoteDataSource {
  factory RemoteDataSource(Dio dio, {String? baseUrl}) = _RemoteDataSource;

  @GET('home.php')
  Future<List<HomeModel>> getAllData();

  @GET('categories/view.php')
  Future<List<CategoriesModel>> getAllCategories();
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  dio.options.connectTimeout = Duration(seconds: 20);
  dio.options.receiveTimeout = Duration(seconds: 20);
//  dio.options.headers["Authorization"] = "Bearer 7b950b29e61cace011a4a91e2a2c57a4aad5455f";
  dio.options.headers["Content-Type"] = "application/json";
  dio.options.headers["Accept"] = "application/json";
  dio.interceptors.add(LogInterceptor(
    error: true,
    request: true,
    requestBody: true,
    responseBody: true,
    requestHeader: false,
    responseHeader: false,
  ));
  return dio;
}
