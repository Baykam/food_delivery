import '../../data/models/category/category.dart';
import 'package:dartz/dartz.dart';

import '../../data/models/category/category_fail.dart';

abstract class ICategoryRepository {
  Future<List<Category>> getCategories();
  // Future<Either<CategoryFailed, List<Category>>> getCategories();
}
