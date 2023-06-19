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
    final data = response.data['data'] as List;
    final List<MenuModell> list = [];
    for (var d in data) {
      d['images'] = d['images'][0];
      final model = MenuModel.fromJson(d);
      list.add(MenuModell.fromModel(model));
    }
    // final list = data.map((e) {
    //   e['images'] = e['images'][0];
    //   final model = MenuModel.fromJson(e);
    //   return MenuModell.fromModel(model);
    // }).toList();
    return list;
  }
}
