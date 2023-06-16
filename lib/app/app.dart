import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:food_delivery/app/router/tare_tag_route_observer.dart';
import 'package:food_delivery/src/presentation/bahaviors/foot_delivery_scroll_behavior.dart';
import 'package:food_delivery/src/presentation/common_cubits/network/network_cubit.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:food_delivery/app/di/injector.dart';
import 'package:food_delivery/app/router/app_router.dart';

class App extends StatelessWidget with WidgetsBindingObserver {
  App({
    super.key,
    required this.androidSdkVersion,
  });

  final int androidSdkVersion;

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => i<NetworkCubit>(),
        ),
      ],
      child: OverlaySupport.global(
        child: MaterialApp.router(
          scrollBehavior: FoodDeliveryScrollBehavior(),
          key: UniqueKey(),
          debugShowCheckedModeBanner: false,
          routerDelegate: AutoRouterDelegate(
            _router,
            navigatorObservers: () => [
              food_deliveryRouteObserver(),
            ],
          ),
          routeInformationParser: _router.defaultRouteParser(),
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('de', 'DE'),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        ),
      ),
    );
  }
}
