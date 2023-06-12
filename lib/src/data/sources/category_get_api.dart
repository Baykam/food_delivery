import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class CategoryGetApi {
  late Dio dio = Dio(BaseOptions(baseUrl: 'http://192.168.1.101:8000/api/v1/'));

  // static String serverIP = 'http://menu.test:8000/api/v1/';

  // CategoryGetApi() {
  //   dio = Dio();
  // }

  Future<Response> getFetchCategory() async {
    const endPoint = 'categories';
    final response = await dio.get(endPoint);
    return response;
  }
}

enum EndPoints { categories, dishes, recommends, media }
