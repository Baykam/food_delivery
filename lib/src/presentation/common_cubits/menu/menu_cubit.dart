import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/entities/menu_model.dart';
import '../../../domain/repositories/i_menu_repository.dart';
part 'menu_state.dart';
part 'menu_cubit.freezed.dart';

@singleton
class MenuCubit extends Cubit<MenuState> {
  MenuCubit(this._iMenuRepository) : super(const MenuState.initial());
  final IMenuRepository _iMenuRepository;

  Future<void> getMenus(int categoryId) async {
    emit(const _Loading());
    try {
      final result = await _iMenuRepository.getMenuLists(categoryId);
      emit(_Success(menus: result));
    } catch (e) {
      emit(const _Failed(message: 'Your Connection failed'));
    }
  }
}
