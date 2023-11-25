import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationHinge extends StatefulWidget {
  const AnimationHinge({super.key});

  @override
  State<AnimationHinge> createState() => _AnimationHingeState();
}

class _AnimationHingeState extends State<AnimationHinge>
    with TickerProviderStateMixin {
  late final AnimationController controller =
      AnimationController(vsync: this, duration: Duration(seconds: 3));
  @override
  void initState() {
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Hinge"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Transform(
              transform: Matrix4.skewY(
                controller.value * 6.28,
              ),
              child: Image.asset(
                "assat/image/de9aq37-daf625af-9f49-41e1-b3ee-2c51ddf34256.png",
                height: 250,
                width: 250,
              ),
            );
          },
        ),
      ),
    );
  }
}
