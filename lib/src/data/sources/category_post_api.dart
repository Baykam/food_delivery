import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class CategoryPostApi {
  late Dio dio;

  static String serverIP = 'http://menu.test:8000/api/v1/';

  Api() {
    dio = Dio();
  }

  Future<Response> PostFetchCategory() async {
    const endPoint = 'categories';
    final response = await dio.post('$serverIP$endPoint', data: {});
    return response;
  }
}

enum endPoints { categories, dishes, recommends, media }
