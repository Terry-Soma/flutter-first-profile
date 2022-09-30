import 'dart:math';

import 'package:flutter/material.dart';

/* starting code */
void main() {
  runApp(const MyApp());
}

///*************  Acknowledge *********************
/// hot reload stateless widget ees hamaarah ?

//=>  ====    {}

//*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[500],
        appBar: AppBar(
          title: const Text("Dice game"),
          backgroundColor: Colors.indigo[700],
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeCondition() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // build method
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice-$leftDiceNumber.png'),
              onPressed: changeCondition,
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice-$rightDiceNumber.png'),
              onPressed: changeCondition,
            ),
          )
        ],
      ),
    );
  }
}
