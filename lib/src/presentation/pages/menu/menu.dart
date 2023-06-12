import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MenuPage extends StatelessWidget {
  const MenuPage(
      {super.key, required this.categoryName, required this.categoryId});
  final String categoryName;
  final int categoryId;

  @override
  Widget build(BuildContext context) {
    /// Todo create cubit
    /// create request to this url => 'dishes?category=$categoryId'
    /// create model
    /// create entity
    ///final _menuCubit = i<MenuCubit>()..getMenu(categoryId);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName,
        ),
      ),
    );
  }
}
