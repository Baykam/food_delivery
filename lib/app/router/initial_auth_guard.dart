import 'package:auto_route/auto_route.dart';

class InitialAuthGuard extends AutoRouteGuard {
  InitialAuthGuard();
  // final UserCubit _userCubit = i<UserCubit>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // final isFirstOpen = _userCubit.isFirstOpen();
    // if (isFirstOpen) {
    //   resolver.next();
    // } else {
    //   final hasSigned = _userCubit.hasSignedIn();
    //   if (hasSigned) {
    //     router.push(const MainRoute());
    //   } else {
    //     router.push(const AuthenticationRoute());
    //   }
    // }
    // Future.delayed(
    //   const Duration(
    //     seconds: 2,
    //   ),
    //   () {
    //     FlutterNativeSplash.remove();
    //   },
    // );
    resolver.next();
  }
}
