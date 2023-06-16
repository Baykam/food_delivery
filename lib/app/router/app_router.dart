import 'package:auto_route/auto_route.dart';
import 'package:food_delivery/app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        // page: OnboardingRoute.page,
        // guards: [InitialAuthGuard()],
        // // initial: true,
        // path: '/',
        // children: [
        // AutoRoute(page: LoginRoute.page),
        AutoRoute(
          path: '/',
          page: MainRoute.page,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              // children: [
              //   AutoRoute(
              //     page: MenuRoute.page,
              //   ),
              // ],
            ),
            AutoRoute(
              page: FavoritesRoute.page,
            ),
            AutoRoute(
              page: ProfileRoute.page,
            ),
          ],
        ),
        AutoRoute(
          page: MenuRoute.page,
        ),
      ];
}
