import 'package:food_delivery/src/data/sources/api.dart';
import 'package:food_delivery/src/domain/entities/app_user_model.dart';
import 'package:food_delivery/src/domain/repositories/i_user_repository.dart';
import 'package:injectable/injectable.dart';

import '../models/user/app_user_model.dart';

@Injectable(
  as: IUserRepository,
)
class UserRepositoryImpl implements IUserRepository {
  UserRepositoryImpl(this._api);

  final Api _api;

  @override
  Future<AppUser?> login(String username, String password) async {
    try {
      final response = await _api.login(username, password);

      AppUserModel model = AppUserModel.fromJson(response.data);

      AppUser appUser = AppUser.fromModel(model);

      return appUser;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AppUser?> register(AppUser appUser) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
