import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(HeyThereApp());

class HeyThereApp extends StatefulWidget {
  @override
  State<HeyThereApp> createState() => _HeyThereAppState();
}

class _HeyThereAppState extends State<HeyThereApp> {

  int _randomColor = 0xFFF44336;
  void randomizeColor() {
    //print(_randomColor);
    setState(() {
      _randomColor = (math.Random().nextDouble() * 0xFFFFFF).toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: GestureDetector(
            onTap: randomizeColor,
            child: Container(
                decoration: BoxDecoration(color: Color(_randomColor).withOpacity(1.0)),
                child: Center(
                     child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Text(
                           "Hey there!",
                           style: TextStyle(
                               backgroundColor: Colors.white,
                               color: Color(_randomColor).withOpacity(1.0),
                               decoration: TextDecoration.none
                           )
                        )
                     )
                )
            )
        )
    );
  }
}