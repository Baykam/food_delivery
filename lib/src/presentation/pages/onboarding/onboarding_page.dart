import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
    // return AutoTabsScaffold(
    //   floatingActionButtonBuilder: (context, tabsRouter) =>
    //       FloatingActionButton.small(
    //     onPressed: () {},
    //   ),
    //   routes: const [
    //     HomeRoute(),
    //     FavoritesRoute(),
    //     ProfileRoute(),
    //   ],
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {},
    //     child: const Icon(Icons.mark_chat_unread_outlined),
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    //   lazyLoad: true,
    //   backgroundColor: Colors.indigo,
    //   bottomNavigationBuilder: (context, tabsRouter) {
    //     return BottomNavigationBar(
    //       elevation: 10,
    //       items: const [
    //         BottomNavigationBarItem(
    //             icon: Icon(Icons.home_max_outlined), label: 'Home'),
    //         BottomNavigationBarItem(
    //             icon: Icon(Icons.favorite_outline_sharp), label: 'Favorites'),
    //         BottomNavigationBarItem(
    //             icon: Icon(Icons.manage_accounts_outlined), label: 'Profile'),
    //       ],
    //       currentIndex: tabsRouter.activeIndex,
    //       onTap: tabsRouter.setActiveIndex,
    //     );
    //   },
    // );
  }
}
