part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.succeeded({required AppUser appUser}) = _Succeeded;
  const factory UserState.failed({required String message}) = _Failed;
}
