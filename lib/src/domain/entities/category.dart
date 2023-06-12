import 'package:food_delivery/src/data/models/category/category_model.dart';
import 'package:food_delivery/src/domain/types/food_delivery_image.dart';
import 'package:food_delivery/src/domain/types/id.dart';
import 'package:food_delivery/src/domain/types/name.dart';

class Category {
  final Id id;
  final Name name;
  final FoodDeliveryImage image;

  const Category({required this.id, required this.name, required this.image});

  factory Category.fromModel(CategoryModel model) {
    return Category(
      id: Id(
        id: model.id,
      ),
      name: Name(
        text: model.name ?? {},
      ),
      image: FoodDeliveryImage(
        image: model.image ?? {},
      ),
    );
  }
}
