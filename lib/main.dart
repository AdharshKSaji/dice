import 'package:dice/view/homepage.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyDice());
}

class MyDice extends StatelessWidget {
  const MyDice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: Dice());
  }
}