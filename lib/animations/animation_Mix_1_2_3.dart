import 'package:flutter/material.dart';

class AnimationMix extends StatefulWidget {
  const AnimationMix({super.key});

  @override
  State<AnimationMix> createState() => _AnimationMixState();
}

class _AnimationMixState extends State<AnimationMix>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> _animation1;
  late final Animation<Offset> _animation2;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );
    _animation1 = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(controller);
    _animation2 = Tween(
      begin: Offset(0, 0),
      end: Offset(-.3, -.3),
    ).animate(controller);
    controller.forward();
    // controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation MIX"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          FadeTransition(
            opacity: _animation1,
            child: Image.asset(
              "assat/image/33332.png",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          ScaleTransition(
            scale: _animation1,
            child: Image.asset(
              "assat/image/33332.png",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SlideTransition(
            position: _animation2,
            child: Image.asset(
              "assat/image/33332.png",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
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
