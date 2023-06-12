import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/app/di/injector.dart';

import '../../../common_cubits/categories/categories_cubit.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _categoryCubit = i<CategoriesCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CategoriesCubit, CategoriesState>(
          listener: (context, state) {},
          bloc: _categoryCubit,
          builder: (context, state) {
            log(state.toString());
            return state.maybeWhen(
              success: (categories) => ListView.separated(
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    categories[index].name!['tk'].toString(),
                  ),
                ),
                separatorBuilder: (context, index) => Divider(),
                itemCount: categories.length,
              ),
              // initial: () => ListView.builder(
              //   itemBuilder: (context, index) {
              //     return Card(
              //       margin: const EdgeInsets.only(bottom: 10),
              //       child: Text(context.watch<CategoriesCubit>().toString()),
              //     );
              //   },
              // ),
              orElse: () =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              failed: (message) => Text('Your Connection failed: $message'),
            );
          }),
    );
  }
}
