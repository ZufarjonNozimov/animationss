import 'package:flutter/material.dart';

class AnimationSlideTransition extends StatefulWidget {
  const AnimationSlideTransition({super.key});

  @override
  State<AnimationSlideTransition> createState() =>
      _AnimationSlideTransitionState();
}

class _AnimationSlideTransitionState extends State<AnimationSlideTransition>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<Offset> _animation;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 600,
      ),
    );
    _animation =
        Tween(begin: Offset(0, 0), end: Offset(-0.3, -.3)).animate(controller);
        controller.forward();
        // controller.repeat(reverse: true); 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation SlideTransition"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SlideTransition(
            position: _animation,
            child: Image.asset("assat/image/33332.png"),
          ),
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
