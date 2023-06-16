import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/app/router/app_router.gr.dart';
import 'package:food_delivery/src/presentation/common_cubits/categories/categories_cubit.dart';

import '../../shared/global.dart';
part './widget/categories_grid_part.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _CategoriesGridPart();
  }
}
