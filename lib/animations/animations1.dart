import 'package:flutter/material.dart';

class AnimationsFadeTransition extends StatefulWidget {
  const AnimationsFadeTransition({super.key});

  @override
  State<AnimationsFadeTransition> createState() =>
      _AnimationsFadeTransitionState();
}

class _AnimationsFadeTransitionState extends State<AnimationsFadeTransition>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> _animation;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1400),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(controller);
    // controller.forward().then((value) {
    //   controller.reverse();
    // });
    // controller.repeat(reverse: false);
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("AnimationFadeTransition"),
      ),
      body: Column(
        children: [
          FadeTransition(
            opacity: _animation,
            child: Image.asset("assat/image/33332.png"),
          )
        ],
      ),
    );
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
