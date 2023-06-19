// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) {
  return _MenuModel.fromJson(json);
}

/// @nodoc
mixin _$MenuModel {
  int get id => throw _privateConstructorUsedError;
  Map<String, String>? get name => throw _privateConstructorUsedError;
  Map<String, String>? get ingredients => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  Map<String, String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuModelCopyWith<MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res, MenuModel>;
  @useResult
  $Res call(
      {int id,
      Map<String, String>? name,
      Map<String, String>? ingredients,
      double? price,
      Map<String, String>? images});
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res, $Val extends MenuModel>
    implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? ingredients = freezed,
    Object? price = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuModelCopyWith<$Res> implements $MenuModelCopyWith<$Res> {
  factory _$$_MenuModelCopyWith(
          _$_MenuModel value, $Res Function(_$_MenuModel) then) =
      __$$_MenuModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Map<String, String>? name,
      Map<String, String>? ingredients,
      double? price,
      Map<String, String>? images});
}

/// @nodoc
class __$$_MenuModelCopyWithImpl<$Res>
    extends _$MenuModelCopyWithImpl<$Res, _$_MenuModel>
    implements _$$_MenuModelCopyWith<$Res> {
  __$$_MenuModelCopyWithImpl(
      _$_MenuModel _value, $Res Function(_$_MenuModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? ingredients = freezed,
    Object? price = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_MenuModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuModel implements _MenuModel {
  const _$_MenuModel(
      {required this.id,
      final Map<String, String>? name,
      final Map<String, String>? ingredients,
      this.price,
      final Map<String, String>? images})
      : _name = name,
        _ingredients = ingredients,
        _images = images;

  factory _$_MenuModel.fromJson(Map<String, dynamic> json) =>
      _$$_MenuModelFromJson(json);

  @override
  final int id;
  final Map<String, String>? _name;
  @override
  Map<String, String>? get name {
    final value = _name;
    if (value == null) return null;
    if (_name is EqualUnmodifiableMapView) return _name;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _ingredients;
  @override
  Map<String, String>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableMapView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? price;
  final Map<String, String>? _images;
  @override
  Map<String, String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableMapView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MenuModel(id: $id, name: $name, ingredients: $ingredients, price: $price, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_name),
      const DeepCollectionEquality().hash(_ingredients),
      price,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuModelCopyWith<_$_MenuModel> get copyWith =>
      __$$_MenuModelCopyWithImpl<_$_MenuModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuModelToJson(
      this,
    );
  }
}

abstract class _MenuModel implements MenuModel {
  const factory _MenuModel(
      {required final int id,
      final Map<String, String>? name,
      final Map<String, String>? ingredients,
      final double? price,
      final Map<String, String>? images}) = _$_MenuModel;

  factory _MenuModel.fromJson(Map<String, dynamic> json) =
      _$_MenuModel.fromJson;

  @override
  int get id;
  @override
  Map<String, String>? get name;
  @override
  Map<String, String>? get ingredients;
  @override
  double? get price;
  @override
  Map<String, String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_MenuModelCopyWith<_$_MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}
