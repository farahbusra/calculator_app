import 'package:counter_calculator/calculate_num.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }

  void reset() {
    emit(0);
  }

  void calculatePage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
        builder: (BuildContext context) => calculateNum(),
    )
    );
  }

  // void product() {
  //   emit(state*input);
  // }

}