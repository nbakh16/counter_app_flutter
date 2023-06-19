import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  SecondScreen(this.counterValue, {super.key});

  int counterValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen')
      ),
      body: Center(
        child: Text('Congratulations! You reached $counterValue!',
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400
          ),
        ),
      ),
    );
  }
}
