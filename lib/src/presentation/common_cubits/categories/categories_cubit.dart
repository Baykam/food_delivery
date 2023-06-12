import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/category/category.dart';
import '../../../domain/repositories/i_category_repository.dart';

part 'categories_state.dart';
part 'categories_cubit.freezed.dart';

@singleton
class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this._icategoryRepository)
      : super(const CategoriesState.initial());

  final ICategoryRepository _icategoryRepository;

  Future<void> getCategories() async {
    emit(const _Loading());
    try {
      final result = await _icategoryRepository.getCategories();
      emit(_Success(categories: result));
    } catch (e) {
      log(e.toString());
      emit(_Failed(message: 'Smth went wrong!'));
    }
  }
}
