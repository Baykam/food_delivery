import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
class MenuModel with _$MenuModel {
  const factory MenuModel(
      {required int id,
      Map<String, String>? name,
      Map<String, String>? ingredients,
      int? price,
      Map<String, String>? images}) = _MenuModel;

  factory MenuModel.fromJson(Map<String, Object?> json) =>
      _$MenuModelFromJson(json);
}
