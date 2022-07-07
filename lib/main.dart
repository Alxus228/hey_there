import 'package:flutter/material.dart';
import 'dart:math' as math;

// Starting point of the application.
void main() => runApp(HeyThereApp());

class HeyThereApp extends StatefulWidget {
  @override
  State<HeyThereApp> createState() => _HeyThereAppState();
}

class _HeyThereAppState extends State<HeyThereApp> {
  // Variable that we will use to randomise background color.
  int _randomColor = 0xFFF44336;
  // Function that will trigger once user tapped somewhere on the screen.
  void randomizeColor() {
    // Changing variable through setState function, so the changes will be saved.
    setState(() {
      _randomColor = (math.Random().nextDouble() * 0xFFFFFF).toInt();
    });
  }
  // Overriding build function.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Creating gesture detector in order to trace taps.
        home: GestureDetector(
            onTap: randomizeColor,
            child: Container(
                // Filling background with color.
                decoration: BoxDecoration(color: Color(_randomColor).withOpacity(1.0)),
                // Creating a text box in the center of the screen.
                child: Center(
                    // Contatiner here is used to add padding.
                     child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.white),
                        // 'Hey there!' text element :3
                        child: Text(
                           "Hey there!",
                           // Applying style to the text.
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