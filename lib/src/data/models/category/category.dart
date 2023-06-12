// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  const Category._();
  factory Category({
    required int id,
    Map<String, String>? name,
    Map<String, String>? image,
  }) = _Category;
  factory Category.empty() => Category(
        id: 1,
      );
  factory Category.fromJson(Map<String, dynamic> data) =>
      _$CategoryFromJson(data);
}
