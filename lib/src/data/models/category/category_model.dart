// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class CategoryModel with _$Category {
  const CategoryModel._();
  factory CategoryModel({
    required int id,
    Map<String, String>? name,
    Map<String, String>? image,
  }) = _Category;
  factory CategoryModel.empty() => CategoryModel(
        id: 1,
      );
  factory CategoryModel.fromJson(Map<String, dynamic> data) =>
      _$CategoryFromJson(data);
}
