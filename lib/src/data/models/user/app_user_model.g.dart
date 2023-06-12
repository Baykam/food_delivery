// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUserModel _$$_AppUserModelFromJson(Map<String, dynamic> json) =>
    _$_AppUserModel(
      id: json['id'] as int,
      username: json['username'] as String?,
      password: json['password'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_AppUserModelToJson(_$_AppUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'token': instance.token,
    };
