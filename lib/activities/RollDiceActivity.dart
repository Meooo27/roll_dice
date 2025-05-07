import 'package:flutter/material.dart';
import 'dart:math';

class RollDiceActivity extends StatefulWidget {
  const RollDiceActivity({super.key});

  @override
  State<RollDiceActivity> createState() => _RollDiceActivity();
}

class _RollDiceActivity extends State<RollDiceActivity> {
  var imageResource = 'assets/images/dice_1.png';

  void _roll() {
    var index = Random().nextInt(6) + 1;
    setState(() {
      imageResource = 'assets/images/dice_$index.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'Roll Dice',
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(imageResource), width: 200, height: 200),
              TextButton(onPressed: _roll, child: Text('Change')),
            ]
        ),
      ),
    );
  }
}