import '../../data/models/menu_model/menu_model.dart';
import '../types/food_delivery_image.dart';
import '../types/id.dart';

import '../types/ingredients.dart';
import '../types/name.dart';
import '../types/price.dart';

class MenuModell {
  final Id id;
  final Name name;
  final Ingredients ingredients;
  final Price price;
  final FoodDeliveryImage images;

  MenuModell({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.price,
    required this.images,
  });

  factory MenuModell.fromModel(MenuModel model) {
    return MenuModell(
      id: Id(id: model.id),
      name: Name(text: model.name ?? {}),
      ingredients: Ingredients(text: model.ingredients ?? {}),
      price: Price(price: model.price ?? 0.0),
      images: FoodDeliveryImage(image: model.images ?? {}),
    );
  }
}
