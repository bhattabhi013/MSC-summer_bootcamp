import 'package:flutter/material.dart';

class TweenBuilder extends StatefulWidget {
  @override
  _TweenBuilderState createState() => _TweenBuilderState();
}

class _TweenBuilderState extends State<TweenBuilder> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Start the animation
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: Duration(seconds: 2),
      tween: Tween<double>(begin: 0.0, end: _opacity),
      builder: (BuildContext context, double value, Widget? child) {
        return Opacity(
          opacity: value,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        );
      },
    );
  }
}
