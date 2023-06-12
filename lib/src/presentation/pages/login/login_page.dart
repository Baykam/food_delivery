import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/app/di/injector.dart';
import 'package:food_delivery/app/router/app_router.gr.dart';
import 'package:food_delivery/src/presentation/common_cubits/user/user_cubit.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _userCubit = i<UserCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      bloc: _userCubit,
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          succeeded: (appUser) {
            context.router.replace(const MainRoute());
          },
        );
      },
      builder: (context, state) => state.when(
        initial: () {
          return MaterialApp(
            home: Column(
              children: [
                TextFormField(),
                TextFormField(),
                ElevatedButton(
                  onPressed: () {
                    _userCubit.login('username', 'password');
                  },
                  child: Text(
                    'submit',
                  ),
                ),
              ],
            ),
          );
        },
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },
        succeeded: (appUser) {
          return Text('Succeeded');
        },
        failed: (message) {
          return Text('failed: $message');
        },
      ),
    );
  }
}
