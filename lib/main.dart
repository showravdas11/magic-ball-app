import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MagicBall(),
    );
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBallNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 37, 37),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 38, 37, 37),
        title: Text("ASK ME"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
          setState(() {
            magicBallNumber = Random().nextInt(5) + 1;
          });
        },
            child: Image.asset(
           "assets/images/ball$magicBallNumber.png",
          width: 300,
          height: 300,
        )),
      ),
    );
  }
}
