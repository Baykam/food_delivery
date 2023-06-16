import '../entities/menu_model.dart';

abstract class IMenuRepository {
  Future<List<MenuModell>> getMenuLists(int categoryId);
}
