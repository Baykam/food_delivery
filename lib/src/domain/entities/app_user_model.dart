import 'package:food_delivery/src/domain/types/id.dart';
import 'package:food_delivery/src/domain/types/password.dart';
import 'package:food_delivery/src/domain/types/token.dart';
import 'package:food_delivery/src/domain/types/username.dart';

import '../../data/models/user/app_user_model.dart';

class AppUser {
  final Id id;
  final Username username;
  final Password password;
  final Token token;

  const AppUser(
      {required this.id,
      required this.username,
      required this.password,
      required this.token});

  factory AppUser.fromModel(AppUserModel model) {
    return AppUser(
        id: Id(id: model.id),
        username: Username(text: model.username ?? ''),
        password: Password(text: model.password ?? ''),
        token: Token(
          text: model.token ?? '',
        ));
  }

  AppUserModel toModel() {
    return AppUserModel(
        id: id.id,
        username: username.text,
        password: password.text,
        token: token.text);
  }
}
