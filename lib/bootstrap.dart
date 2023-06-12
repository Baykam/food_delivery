import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:food_delivery/app/di/injector.dart';

const _tag = 'AppBlocObserver';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)', name: _tag);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)', name: _tag);
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(
  FutureOr<Widget> Function(int androidSdkVersion) builder,
) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = AppBlocObserver();

  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );
    configureDependencies();
    final locale = window.locale;
    Intl.systemLocale = locale.toString();

    // if (kDebugMode) {
    //   await FirebaseCrashlytics.instance
    //       .setCrashlyticsCollectionEnabled(false);
    // } else {
    //   await FirebaseCrashlytics.instance
    //       .setCrashlyticsCollectionEnabled(true);
    // }
    // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

    final deviceInfo = await DeviceInfoPlugin().deviceInfo;
    final androidSdkVersion =
        deviceInfo is AndroidDeviceInfo ? deviceInfo.version.sdkInt : 0;

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    runApp(await builder(androidSdkVersion));
  }, (error, stackTrace) {}
      // FirebaseCrashlytics.instance.recordError(error, stackTrace),
      );
}
