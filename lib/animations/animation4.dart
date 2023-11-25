import 'package:flutter/material.dart';

class AnimationTweenBuilder extends StatefulWidget {
  const AnimationTweenBuilder({super.key});

  @override
  State<AnimationTweenBuilder> createState() => _AnimationTweenBuilderState();
}

class _AnimationTweenBuilderState extends State<AnimationTweenBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationTweenBuilder"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: TweenAnimationBuilder(
          curve: Curves.bounceOut,
          tween: Tween(begin: .0, end: 1.0),
          duration: Duration(seconds: 2),
          builder: (context, value, child) {
            return Transform.scale(
              scaleX: 0.9,
              scaleY: 1,
              child: Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(6, 6)
                    )
                  ],
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
