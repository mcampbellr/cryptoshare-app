import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:main/bloc/users/users_cubit.dart';
import 'package:main/pages/welcome/welcome_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-splash.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: BlocBuilder<UsersCubit, UsersState>(
            builder: (context, state) {
              if (state is UsersInitial) {
                Future.delayed(Duration.zero, () {
                  Navigator.of(context)
                      .pushReplacementNamed(WelcomePage.routeName);
                });
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
