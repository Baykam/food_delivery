import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../app/di/injector.dart';
import '../../common_cubits/counter/counter_cubit.dart';
import '../../common_cubits/menu/menu_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';

part 'widgets/menu_first_look_page.dart';

@RoutePage()
class MenuPage extends StatelessWidget {
  MenuPage({super.key, required this.categoryName, required this.categoryId});
  final String categoryName;
  final int categoryId;
  final _menuCubit = i<MenuCubit>();

  /// Todo create cubit
  /// create request to this url => 'dishes?category=$categoryId'
  /// create model
  /// create entity

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MenuCubit, MenuState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          initial: () {
            _menuCubit.getMenus(categoryId);
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              categoryName,
            ),
          ),
          body: BlocBuilder<MenuCubit, MenuState>(
            builder: (context, state) {
              return state.maybeWhen(
                success: (menus) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: menus.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(12),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          MenuLookPage(
                            id: menus[index].id.id,
                            name: menus[index].name.getText(const Locale('tk')),
                            price: menus[index].price.price,
                            ingredients: menus[index]
                                .ingredients
                                .getMenuList(const Locale('tk')),
                            categoryName: categoryName,
                            image: menus[index].images.getOrigin(),
                          );
                        },
                        child: GridTile(
                          header: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12)),
                            child: Text(
                                menus[index].name.getText(const Locale('tk')),
                                style:
                                    const TextStyle(color: Colors.blueAccent)),
                          ),
                          footer: Container(
                            height: 60,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(16))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(menus[index].price.price as String),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton.filled(
                                        onPressed: () {},
                                        icon:
                                            const Icon(Icons.favorite_border)),
                                    IconButton.filled(
                                        onPressed: () {},
                                        icon: const Icon(
                                            Icons.add_shopping_cart_outlined)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          child: Image.network(
                            menus[index].images.getOrigin()[0],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                },
                orElse: () => const SizedBox(),
                loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                failed: (message) => Text(message),
              );
            },
          ),
        );
      },
    );
  }
}
