import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trips/app/cubit/app_cubit_states.dart';
import 'package:trips/app/cubit/app_cubits.dart';
import 'package:trips/app/screens/detail_screen.dart';
import 'package:trips/app/screens/home_screen.dart';
import 'package:trips/app/screens/navscreens/main_screen.dart';
import 'package:trips/app/screens/welcome_screen.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is DetailState) {
          return DetailScreen();
        }
        if (state is WelcomeState) {
          return WelcomeScreen();
        }
        if (state is LoadedState) {
          return MainScreen();
        }
        if (state is LoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container();
        }
      }),
    );
  }
}