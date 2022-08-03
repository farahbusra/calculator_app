import 'package:flutter/material.dart';
import 'counter_cubit.dart';
import 'main.dart';

class calculateNum extends StatelessWidget {

  final int input;
  final int state;

  calculateNum({required this.input, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculate'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('$input', style: const TextStyle(fontSize: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('x', style: TextStyle(fontSize: 50),),
              Text('$state', style: TextStyle(fontSize: 50),),

              const Divider(
                thickness: 2,
              ),
              Text('${input*state}'),
            ],
          )
        ],
      ),
    );
  }
}


