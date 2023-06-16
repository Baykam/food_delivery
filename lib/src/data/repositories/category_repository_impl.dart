import 'package:food_delivery/src/domain/entities/category.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/i_category_repository.dart';
import '../models/category/category_model.dart';
import '../sources/api.dart';
import '../sources/network_info.dart';

@Injectable(as: ICategoryRepository)
class CategoryRepositoryImpl implements ICategoryRepository {
  final CategoryGetApi api;

  CategoryRepositoryImpl({required this.api, required NetworkInfo networkInfo});
  @override
  Future<List<Category>> getCategories() async {
    final response = await api.getFetchCategory();
    final list = (response.data as List).map((e) {
      final model = CategoryModel.fromJson(e);
      return Category.fromModel(model);
    }).toList();
    return list;
  }
}
