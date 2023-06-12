import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/i_category_repository.dart';
import '../models/category/category.dart';
import '../models/category/category_fail.dart';
import '../sources/category_get_api.dart';
import '../sources/exceptions.dart';
import '../sources/network_info.dart';

@Injectable(as: ICategoryRepository)
class CategoryRepositoryImpl implements ICategoryRepository {
  final CategoryGetApi api;
  final NetworkInfo networkInfo;

  CategoryRepositoryImpl({required this.api, required this.networkInfo});
  @override
  // Future<Either<CategoryFailed, List<Category>>> getCategories() async {
  Future<List<Category>> getCategories() async {
    // if (await networkInfo.isConnected) {
    //   try {
    final response = await api.getFetchCategory();
    print(response);

    final List<Category> list = [];

    for (var category in response.data) {
      print(category);
      final cat = Category.fromJson(category);
      list.add(cat);
    }

    // final list = response.data.map((e) {
    //   log(e);
    //   return Category.fromJson(e);
    // }).toList();
    log(list.length.toString());
    return list;
    // return right(response.data.map((e) => Category.fromJson).toList());
    //   } on ServerException {
    //     // return left(const CategoryFailed.serverError());
    //   }
    // } else {
    //   // return left(const CategoryFailed.noConnection());
    // }
  }
}
