import 'package:flutter/material.dart';

class AnimationScaleTrasition extends StatefulWidget {
  const AnimationScaleTrasition({super.key});

  @override
  State<AnimationScaleTrasition> createState() =>
      _AnimationScaleTrasitionState();
}

class _AnimationScaleTrasitionState extends State<AnimationScaleTrasition>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> _animation;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
    // controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationScaleTransition"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset("assat/image/33332.png"),
        ),
      ),
    );
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
