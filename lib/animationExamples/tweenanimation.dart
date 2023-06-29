import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  @override
  _TweenAnimationState createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<EdgeInsets> _marginAnimation;
  late Animation<double> _widthAnimation;

  @override
  void initState() {
    super.initState();

    // Create the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Animation duration
    );

    // Define the margin animation
    _marginAnimation = EdgeInsetsTween(
      begin: EdgeInsets.zero,
      end: EdgeInsets.all(20.0),
    ).animate(_controller);

    // Define the width animation
    _widthAnimation = Tween<double>(
      begin: 100.0,
      end: 200.0,
    ).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Container(
          margin: _marginAnimation.value,
          width: _widthAnimation.value,
          height: 100.0,
          color: Colors.blue,
        );
      },
    );
  }
}
