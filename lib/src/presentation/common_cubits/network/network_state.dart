part of 'network_cubit.dart';

@freezed
class NetworkState with _$NetworkState {
  const factory NetworkState.initial() = _Initial;
  const factory NetworkState.loading() = _Loading;
  const factory NetworkState.succeeded() = _Succeeded;
  const factory NetworkState.failed() = _Failed;
}
