import 'package:counter_calculator/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'input_num.dart';
import 'calculate_num.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: BlocProvider(
        create:
          (context) => CounterCubit(),
          child:
         const MyHomePage(),
      ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  late CounterCubit cubit;

  @override
  void didChangeDependencies() {
    cubit = BlocProvider.of<CounterCubit>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: BlocConsumer<CounterCubit, int>(
            bloc: cubit,
            listener: (context, state) {
              const snackbar = SnackBar(
                content: Text('State is reached'),
              );

              if (state == 5) {
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              }
            },
            builder: (context, state) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const inputNum(),
                    Text(
                      '$state',
                      style: TextStyle(fontSize: 200),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              cubit.increment();
                            },
                            child: const Icon(Icons.add),
                          ),
                          FloatingActionButton(
                              onPressed: () {
                                cubit.reset();
                              },
                              child: const Icon(Icons.refresh)),
                          FloatingActionButton(
                              onPressed: () {
                                cubit.decrement();
                              },
                              child: const Icon(Icons.remove)),
                          FloatingActionButton(
                              onPressed: () => cubit.calculatePage(context),
                              child: const Icon(Icons.close)),
                          FloatingActionButton(
                              onPressed: () => cubit.calculatePage(context),
                              child: const Text('/', style: TextStyle(fontSize: 20),)),
                        ])
                  ],
                ),
              );
            }));
  }
}

