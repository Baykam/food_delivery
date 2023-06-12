import 'package:food_delivery/src/domain/entities/app_user_model.dart';

abstract class IUserRepository {
  Future<AppUser?> login(String username, String password);
  Future<AppUser?> register(AppUser appUser);
}
