import 'package:flutter/material.dart';
import 'counter_cubit.dart';
import 'main.dart';

// class calculateNum extends StatelessWidget {
//   const calculateNum(Object context, {Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Calculate'),
//       ),
//     );
//   }
// }



class calculateNum extends StatefulWidget {
  const calculateNum({Key? key}) : super(key: key);

  @override
  State<calculateNum> createState() => _calculateNumState();
}

class _calculateNumState extends State<calculateNum> {
  // int result;
  //
  // @override
  // Widget build(BuildContext context) {
  //   return ResultDisplay(text: '0');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculate'),
      ),
      // body: Container(
      //   child: Navigator.pop(context, true);
      // )
    );
  }
}
