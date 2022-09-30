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
            backgroundColor: Colors.blue[600],
            appBar: AppBar(
              title: const Text("Ask me anything"),
              backgroundColor: Colors.blue[900],
            ),
            body: const BallPage()));
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  void clickHandler() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: clickHandler,
          child: Image.asset("images/ball$ballNumber.png"),
        ),
      ),
    );
  }
}
