// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:food_delivery/src/presentation/pages/button/floating_button.dart'
    as _i1;
import 'package:food_delivery/src/presentation/pages/favorites/favorites_page.dart'
    as _i2;
import 'package:food_delivery/src/presentation/pages/home/home_page.dart'
    as _i3;
import 'package:food_delivery/src/presentation/pages/login/login_page.dart'
    as _i4;
import 'package:food_delivery/src/presentation/pages/main/main_page.dart'
    as _i5;
import 'package:food_delivery/src/presentation/pages/menu/menu.dart' as _i6;
import 'package:food_delivery/src/presentation/pages/onboarding/onboarding_page.dart'
    as _i7;
import 'package:food_delivery/src/presentation/pages/profile/profile.dart'
    as _i8;
import 'package:food_delivery/src/presentation/pages/search/search.dart' as _i9;
import 'package:food_delivery/src/presentation/pages/settings/settings.dart'
    as _i10;
import 'package:food_delivery/src/presentation/pages/tabbar/tabbar.dart'
    as _i11;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    FloatingButtonRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FloatingButtonPage(),
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FavoritesPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LoginPage(key: args.key),
      );
    },
    MainRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainPage(),
      );
    },
    MenuRoute.name: (routeData) {
      final args = routeData.argsAs<MenuRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.MenuPage(
          key: args.key,
          categoryName: args.categoryName,
          categoryId: args.categoryId,
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OnboardingPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfilePage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SearchPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SettingsPage(),
      );
    },
    TabbarRoute.name: (routeData) {
      final args = routeData.argsAs<TabbarRouteArgs>(
          orElse: () => const TabbarRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.TabbarPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.FloatingButtonPage]
class FloatingButtonRoute extends _i12.PageRouteInfo<void> {
  const FloatingButtonRoute({List<_i12.PageRouteInfo>? children})
      : super(
          FloatingButtonRoute.name,
          initialChildren: children,
        );

  static const String name = 'FloatingButtonRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FavoritesPage]
class FavoritesRoute extends _i12.PageRouteInfo<void> {
  const FavoritesRoute({List<_i12.PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i12.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i12.PageInfo<LoginRouteArgs> page =
      _i12.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.MainPage]
class MainRoute extends _i12.PageRouteInfo<void> {
  const MainRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MenuPage]
class MenuRoute extends _i12.PageRouteInfo<MenuRouteArgs> {
  MenuRoute({
    _i13.Key? key,
    required String categoryName,
    required int categoryId,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          MenuRoute.name,
          args: MenuRouteArgs(
            key: key,
            categoryName: categoryName,
            categoryId: categoryId,
          ),
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static const _i12.PageInfo<MenuRouteArgs> page =
      _i12.PageInfo<MenuRouteArgs>(name);
}

class MenuRouteArgs {
  const MenuRouteArgs({
    this.key,
    required this.categoryName,
    required this.categoryId,
  });

  final _i13.Key? key;

  final String categoryName;

  final int categoryId;

  @override
  String toString() {
    return 'MenuRouteArgs{key: $key, categoryName: $categoryName, categoryId: $categoryId}';
  }
}

/// generated route for
/// [_i7.OnboardingPage]
class OnboardingRoute extends _i12.PageRouteInfo<void> {
  const OnboardingRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SearchPage]
class SearchRoute extends _i12.PageRouteInfo<void> {
  const SearchRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SettingsPage]
class SettingsRoute extends _i12.PageRouteInfo<void> {
  const SettingsRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.TabbarPage]
class TabbarRoute extends _i12.PageRouteInfo<TabbarRouteArgs> {
  TabbarRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          TabbarRoute.name,
          args: TabbarRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TabbarRoute';

  static const _i12.PageInfo<TabbarRouteArgs> page =
      _i12.PageInfo<TabbarRouteArgs>(name);
}

class TabbarRouteArgs {
  const TabbarRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'TabbarRouteArgs{key: $key}';
  }
}
