import 'package:flutter/material.dart';
import 'package:ostad_live_test_07/second_screen.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void onIncrement() {
    setState(() {
      counter++;

      if(counter == 5) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Counter Alert'),
              content: const Text('Counter value is 5!'),
              actions: [
                TextButton(
                  child: const Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }

      else if (counter == 10) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondScreen(counter),),
        );
      }
    });
  }

  void onDecrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Counter Value',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
            Text(counter.toString(),
              style: const TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: onIncrement,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen
                      ),
                      child: const Icon(Icons.add),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: onDecrement,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent
                      ),
                      child: const Icon(Icons.remove),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
