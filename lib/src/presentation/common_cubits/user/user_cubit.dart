import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/domain/entities/app_user_model.dart';
import 'package:food_delivery/src/domain/repositories/i_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

@singleton
class UserCubit extends Cubit<UserState> {
  UserCubit(this._userRepository) : super(const _Initial());

  final IUserRepository _userRepository;

  Future<void> login(String username, String password) async {
    emit(const _Loading());
    final appUser = await _userRepository.login(username, password);

    if (appUser != null) {
      emit(_Succeeded(appUser: appUser));
    } else {
      emit(const _Failed(message: 'Login failed!'));
    }
  }
}
