import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_model.freezed.dart';
part 'app_user_model.g.dart';

@freezed
class AppUserModel with _$AppUserModel {
  const factory AppUserModel({
    required int id,
    required String? username,
    required String? password,
    required String? token,
  }) = _AppUserModel;

  factory AppUserModel.fromJson(Map<String, Object?> json) =>
      _$AppUserModelFromJson(json);
}
