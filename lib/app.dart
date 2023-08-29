import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_containers/controller/cubit/container_cubit/container_cubit.dart';
import 'package:two_containers/view/screens/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ContainerCubit(),
        child: HomeScreen(),
      ),
    );
  }
}
