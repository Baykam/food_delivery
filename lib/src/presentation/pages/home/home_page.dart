import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/src/presentation/common_cubits/categories/categories_cubit.dart';

import '../../../../app/di/injector.dart';
import 'widget/home_screen.dart';

@RoutePage()
class HomePage extends StatefulWidget implements PreferredSizeWidget {
  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Size get preferredSize => AppBar().preferredSize;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
/*BlocProvider<CategoriesCubit>(
      create: (context) => i()..getCategories(),
      child: AutoTabsScaffold(
          routes: const [HomeRoute(), FavoritesRoute(), ProfileRoute()],
          bottomNavigationBuilder: (_, tabsRouter) {
            return BlocBuilder<CategoriesCubit, CategoriesState>(
              builder: (context, state)  {
                state.when(
                  initial: () {
                    return BottomNavigationBar(
                        currentIndex: tabsRouter.activeIndex,
                        onTap: tabsRouter.setActiveIndex,
                        items: const [
                          BottomNavigationBarItem(
                            label: 'Home',
                            icon: Icon(Icons.home),
                          ),
                          BottomNavigationBarItem(
                            label: 'Posts',
                            icon: Icon(Icons.favorite_border_outlined),
                          ),
                          BottomNavigationBarItem(
                            label: 'Settings',
                            icon: Icon(Icons.man_3_rounded),
                          ),
                        ]);
                  },
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (categories) =>
                      const Text('Your validation Success'),
                  failed: (message) => Text('Connection failed: $message'),
                );
              },
            );
          }),
    );*/