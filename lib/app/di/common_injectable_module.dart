import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class CommonInjectableModule {
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  // FirebaseFirestore get store => FirebaseFirestore.instance;
  // FirebaseAuth get auth => FirebaseAuth.instance;
  // Reference get storage => FirebaseStorage.instance.ref();

  Connectivity get connectivity => Connectivity();
}
