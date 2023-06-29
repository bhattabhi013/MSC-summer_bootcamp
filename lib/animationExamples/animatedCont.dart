import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _containerMargin = 16.0;
  double _containerWidth = 200.0;

  void _toggleContainer() {
    setState(() {
      if (_containerMargin == 16.0) {
        _containerMargin = 32.0;
        _containerWidth = 300.0;
      } else {
        _containerMargin = 16.0;
        _containerWidth = 200.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 5),
              margin: EdgeInsets.all(_containerMargin),
              width: _containerWidth,
              height: 100.0,
              color: Colors.blue,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _toggleContainer,
              child: Text('Toggle Container'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AnimatedContainerExample(),
  ));
}
