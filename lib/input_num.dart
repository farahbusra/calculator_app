import 'package:flutter/material.dart';

class inputFromUser {
  int? number;
}

class inputNum extends StatefulWidget {
  const inputNum({Key? key}) : super(key: key);

  @override
  State<inputNum> createState() => _inputNumState();
}

class _inputNumState extends State<inputNum> {
  final _inputNumController = TextEditingController();
  // List<inputFromUser> numFromUser = [];

  // void routingToDivision(BuildContext context, int input, int state) {
  //   //Routing to pages from multiply_and_divide.dart
  //   Navigator.push(context, MaterialPageRoute(
  //     builder: (BuildContext context) {
  //       return DivideFunction(
  //         input: input,
  //         state: state,
  //       );
  //     },
  //   ));
  // }

  void showAlertDialog(BuildContext context) {
    showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(_inputNumController.text),
          );
        }
    );
  }

  @override
  void dispose() {
    _inputNumController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(10.0),
          child: TextField(
            controller: _inputNumController,
            decoration: InputDecoration(
              hintText: "Insert a number",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(1),
          child: ElevatedButton(
            child: Text(
              'Submit number', style: TextStyle(fontSize: 15),
            ),
            onPressed: () {
              int input = int.parse(_inputNumController.text);
              // routingToDivision(context, input, state);
              // Navigator.pop(context, true);
              showAlertDialog(context);
            },
          ),
        ),
      ]
    );


  }
}
