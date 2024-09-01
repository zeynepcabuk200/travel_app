import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:travel_app/view/home_view.dart';
import 'package:travel_app/view/welcome_view.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, AppCubitStates>(builder: (context, state) {
        if (state is WelcomeState) {
          return const WelcomeView();
        } else if (state is LoadingState) {
          return const Center(child: CircularProgressIndicator());
        }else if (state is LoadedState) {
          return const HomeView();
        } else {
          return Container();
        }
      }),
    );
  }
}
