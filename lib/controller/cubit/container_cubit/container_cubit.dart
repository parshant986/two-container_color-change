
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_containers/controller/cubit/container_cubit/container_state.dart';

ContainerCubit containerCubit = ContainerCubit();

class ContainerCubit extends Cubit<ContainerState>{
  ContainerCubit() :super(ContainerState(containerOne: true, containerTwo: true));

  one(){
    emit(ContainerState(containerOne: !state.containerOne, containerTwo: state.containerTwo));
  
  }

  two(){
    emit(ContainerState(containerOne: state.containerOne, containerTwo: !state.containerTwo));

  }
}