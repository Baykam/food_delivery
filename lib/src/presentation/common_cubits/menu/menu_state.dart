part of 'menu_cubit.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState.initial() = _Initial;
  const factory MenuState.loading() = _Loading;
  const factory MenuState.success({required List<MenuModell> menus}) = _Success;
  const factory MenuState.failed({required String message}) = _Failed;
}
