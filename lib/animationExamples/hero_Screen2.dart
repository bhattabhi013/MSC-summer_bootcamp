import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen B'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: 'myContainer',
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
