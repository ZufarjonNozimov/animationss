import 'package:animationss/homewroke/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _MainPageState();
}

class _MainPageState extends State<Page1> with TickerProviderStateMixin {
  late final AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SlideTransition(
                
                position: Tween(
                  begin: const Offset(-2, -2),
                  end: const Offset(0, 0),
                ).animate(controller),
                child: Image.asset(
                  "assat/image/main.png",
                  height: 280,
                  width: 400,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SlideTransition(
                  position: Tween(
                    begin: const Offset(2, 2),
                    end: const Offset(0, 0),
                  ).animate(controller),
                  child: const Text(
                    "The first bank",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SlideTransition(
                position: Tween(
                  begin: const Offset(-2, -2),
                  end: const Offset(0, 0),
                ).animate(controller),
                child: const Text(
                  "without a bank",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SlideTransition(
                  position: Tween(
                    begin: const Offset(-2, -2),
                    end: const Offset(0, 0),
                  ).animate(controller),
                  child: const Text("join the nobank exparience,"),
                ),
              ),
              SlideTransition(
                position: Tween(
                  begin: const Offset(2, 2),
                  end: const Offset(0, 0),
                ).animate(controller),
                child: const Text("entirely online no jokes"),
              ),
              Padding(
                padding: const EdgeInsets.all(100),
                child: SlideTransition(
                  position: Tween(
                    begin: const Offset(2, 2),
                    end: const Offset(0, 0),
                  ).animate(controller),
                  child: CupertinoButton(
                    alignment: Alignment.center,
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                    child: const Text("Enter"),
                    onPressed: () async {
                      if (controller.isCompleted) {
                        await controller.reverse();
                      }
                      // ignore: use_build_context_synchronously
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Page2(),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
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
