import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;
  String name = "MAIT";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void nameChange() {
    setState(() {
      name = 'IGDTUW';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Counter value:',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '$name',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: nameChange,
          child: Text('change'),
        ),
      ],
    );
  }
}
