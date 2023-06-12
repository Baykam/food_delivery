import 'package:food_delivery/src/domain/entities/category.dart';

abstract class ICategoryRepository {
  Future<List<Category>> getCategories();
  // Future<Either<CategoryFailed, List<Category>>> getCategories();
}
