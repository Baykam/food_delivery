import 'package:auto_route/auto_route.dart';
import 'package:food_delivery/app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: MainRoute.page,
          children: [
            AutoRoute(
              path: 'home',
              page: EmptyRouter.page,
              children: [
                AutoRoute(
                  path: '',
                  page: HomeRoute.page,
                ),
                AutoRoute(
                  path: ':categoryId',
                  page: MenuRoute.page,
                ),
              ],
            ),
            AutoRoute(
              page: FavoritesRoute.page,
            ),
            AutoRoute(
              page: ProfileRoute.page,
            ),
          ],
        ),
        // AutoRoute(
        //   page: MenuRoute.page,
        // ),
      ];
}
