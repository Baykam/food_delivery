import 'package:injectable/injectable.dart';

import '../../domain/repositories/i_category_repository.dart';
import '../models/category/category.dart';
import '../sources/category_get_api.dart';
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
    final list = (response.data as List).map((e) {
      return Category.fromJson(e);
    }).toList();
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
