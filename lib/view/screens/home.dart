import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_containers/controller/cubit/container_cubit/container_cubit.dart';
import 'package:two_containers/controller/cubit/container_cubit/container_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<ContainerCubit, ContainerState>(
          bloc: containerCubit,
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: (state.containerOne)? Colors.red: Colors.green,
                    ),
                    ElevatedButton(onPressed: () {
                   containerCubit.one();
                    }, child: Text("1"))
                  ],
                ),
                SizedBox(
                  width: 20,

                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: (state.containerTwo)? Colors.red: Colors.green,
                    ),
                    ElevatedButton(onPressed: () {
                       containerCubit.two();
                    }, child: Text("2"))
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
