import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class Api {
  late Dio dio = Dio();

  static String serverIP = 'http://menu.test:8000/api/v1/';

  Future<Response> login(String username, String password) async {
    const endPoint = 'categories';
    final response = await dio.post('$serverIP$endPoint', data: {});
    return response;
  }
}

class BaseApi {
  final Dio dio = Dio();
  final baseUrl = 'http://192.168.50.219:8000/api/v1/';
}

@singleton
class CategoryGetApi {
  late Dio dio = Dio(BaseOptions(baseUrl: BaseApi().baseUrl));

  Future<Response> getFetchCategory() async {
    const endPoint = 'categories';
    final response = await dio.get(endPoint);
    return response;
  }
}

@singleton
class CategoryPostApi {
  late Dio dio = Dio(BaseOptions(baseUrl: BaseApi().baseUrl));

  Future<Response> postFetchCategory() async {
    const endPoint = 'categories';
    final response = await dio.post(endPoint, data: {});
    return response;
  }
}

@singleton
class MenuGetApi {
  late Dio dio = Dio(BaseOptions(baseUrl: BaseApi().baseUrl));

  Future<dynamic> getMenuApi(int categoryId) async {
    dynamic endPoint = 'dishes?category=$categoryId';
    try {
      final response = await dio.get(endPoint);
      return response.data['data'] as List;
    } catch (e) {
      rethrow;
    }
  }
}
