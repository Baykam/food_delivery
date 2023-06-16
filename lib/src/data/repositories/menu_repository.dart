import 'package:food_delivery/src/domain/entities/menu_model.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/i_menu_repository.dart';
import '../models/menu_model/menu_model.dart';
import '../sources/api.dart';

@Injectable(as: IMenuRepository)
class MenuRepositoryImpl implements IMenuRepository {
  final MenuGetApi getaApi;

  MenuRepositoryImpl({required this.getaApi});

  @override
  Future<List<MenuModell>> getMenuLists(int categoryId) async {
    final response = await getaApi.getMenuApi(categoryId);
    final list = (response.data as List).map((e) {
      final model = MenuModel.fromJson(e);
      return MenuModell.fromModel(model);
    }).toList();
    return list;
  }
}
