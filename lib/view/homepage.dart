import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice_no = 1;
  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer from 0 to n-1
      dice_no = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: FloatingActionButton(
            child: Image.asset('assets/d$dice_no.png'),
            onPressed: () {
              update();
            },
          ),
        ),
      ),
    );
  }
}