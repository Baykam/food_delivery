import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/di/injector.dart';
import '../../../../app/router/app_router.gr.dart';
import '../../common_cubits/categories/categories_cubit.dart';
import '../../common_cubits/counter/counter_cubit.dart';
import '../../common_cubits/menu/menu_cubit.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: i<CategoriesCubit>()..getCategories(),
        ),
        BlocProvider.value(
          value: i<MenuCubit>(),
        ),
        BlocProvider(
          create: (context) => i<CounterCubit>(),
        )
      ],
      child: AutoTabsScaffold(
        routes: const [HomeRoute(), FavoritesRoute(), ProfileRoute()],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: 'Favorites',
                  icon: Icon(Icons.favorite_border_outlined),
                ),
                BottomNavigationBarItem(
                  label: 'Settings',
                  icon: Icon(Icons.man_3_rounded),
                ),
              ]);
        },
      ),
    );
  }
}
