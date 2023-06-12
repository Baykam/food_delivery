import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  final Connectivity networkConnectivity;

  NetworkInfoImpl({required this.networkConnectivity});
  @override
  Future<bool> get isConnected =>
      networkConnectivity.checkConnectivity().then((value) {
        return true;
      });
}
