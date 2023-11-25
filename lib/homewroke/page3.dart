import 'package:animationss/homewroke/page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> with TickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    Future.microtask(() {
      controller.forward();
    });
    // controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: Tween(begin: 0.0, end: 1.1).animate(controller),
              child: FadeTransition(
                opacity: Tween(begin: 0.0, end: 1.1).animate(controller),
                child: Image.asset(
                  "assat/image/second.png",
                  height: 280,
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ScaleTransition(
              scale: Tween(begin: 0.0, end: 1.1).animate(controller),
              child: const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "You did it",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ScaleTransition(
              scale: Tween(begin: 0.0, end: 1.1).animate(controller),
              child: const Text(
                "you're in",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SlideTransition(
              position:
                  Tween(begin: const Offset(-3, -3), end: const Offset(0, 0))
                      .animate(controller),
              child: const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("welcome Lorenzo now"),
              ),
            ),
            SlideTransition(
              position:
                  Tween(begin: const Offset(3, 3), end: const Offset(0, 0))
                      .animate(controller),
              child: const Text("you are a nobanker!"),
            ),
            ScaleTransition(
              scale: Tween(begin: 0.0, end: 1.1).animate(controller),
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black,
                  child: const Text(
                    "Enter",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    if (controller.isCompleted) {
                      await controller.reverse();
                    }
                    // ignore: use_build_context_synchronously
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page1(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
