import 'package:animationss/homewroke/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> with TickerProviderStateMixin {
  late final AnimationController controller1;
  late final AnimationController controller2;
  late final AnimationController controller3;
  late final AnimationController controller4;
  late final AnimationController controller5;
  late final AnimationController controller6;
  late final AnimationController controller7;
  late final AnimationController controller8;
  late final AnimationController controller9;
  late final AnimationController controller10;
  late final AnimationController controller11;
  late final AnimationController controller12;
  late final AnimationController controller13;
  late final AnimationController controller14;
  late final AnimationController controller15;
  late final AnimationController controller16;
  late final AnimationController controller17;
  late final AnimationController controller18;
  @override
  void initState() {
    controller1 =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
    controller2 =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
    controller3 =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 400));
    controller4 =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    controller5 =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 600));
    controller6 =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 700));
    controller7 =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
    controller8 =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 900));
    controller9 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    controller10 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1100));
    controller11 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    controller12 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1300));
    controller13 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1400));
    controller14 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    controller15 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1600));
    controller16 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1700));
    controller17 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1800));
    controller18 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1900));
    controller1.forward();
    controller2.forward();
    controller3.forward();
    controller4.forward();
    controller5.forward();
    controller6.forward();
    controller7.forward();
    controller8.forward();
    controller9.forward();
    controller10.forward();
    controller11.forward();
    controller12.forward();
    controller13.forward();
    controller14.forward();
    controller15.forward();
    controller16.forward();
    controller17.forward();
    controller18.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 50),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ScaleTransition(
                        scale: Tween(begin: 0.0, end: 1.0).animate(controller1),
                        child: const Text(
                          "Choose",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale: Tween(begin: 0.0, end: 1.0).animate(controller2),
                        child: const Text(
                          "your plan",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale: Tween(begin: 0.0, end: 1.0).animate(controller3),
                        child: const Text(
                          "\nyou can always start with",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale: Tween(begin: 0.0, end: 1.0).animate(controller4),
                        child: const Text(
                          "a free plan and then upgrade",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ), 
            ScaleTransition(
              scale: Tween(begin: 0.0, end: 1.0).animate(controller5),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(-0, 4),
                        blurRadius: 20,
                      )
                    ],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    border: const Border.fromBorderSide(
                      BorderSide(color: Colors.black12, width: 1),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ScaleTransition(
                        scale: Tween(begin: 0.0, end: 1.0).animate(controller6),
                        child: const Text(
                          "noblack",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale: Tween(begin: 0.0, end: 1.0).animate(controller7),
                        child: const Text(
                          r"4.99$ monthly",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale: Tween(begin: 0.0, end: 1.0).animate(controller8),
                        child: const Text(
                          "\nUnlimited cards and spaces,",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale: Tween(begin: 0.0, end: 1.0).animate(controller9),
                        child: const Text(
                          "investments tips and much more.",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale:
                            Tween(begin: 0.0, end: 1.0).animate(controller10),
                        child: const Text(
                          "read all the features",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale:
                            Tween(begin: 0.0, end: 1.0).animate(controller11),
                        child: TextButton(
                          onPressed: () async {
                            if (controller1.isCompleted &&
                                controller2.isCompleted &&
                                controller3.isCompleted &&
                                controller4.isCompleted &&
                                controller5.isCompleted &&
                                controller12.isCompleted) {
                              await controller1.reverse();
                              await controller2.reverse();
                              await controller3.reverse();
                              await controller4.reverse();
                              await controller5.reverse();
                              await controller12.reverse();
                            }
                            // ignore: use_build_context_synchronously
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Page3(),
                              ),
                            );
                          },
                          child: const Text(
                            "I want this",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ScaleTransition(
              scale: Tween(begin: 0.0, end: 1.0).animate(controller12),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(-0, 4),
                        blurRadius: 20,
                      )
                    ],
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    border: const Border.fromBorderSide(
                      BorderSide(color: Colors.black12, width: 1),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ScaleTransition(
                        scale:
                            Tween(begin: 0.0, end: 1.0).animate(controller13),
                        child: const Text(
                          "nowhite",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale:
                            Tween(begin: 0.0, end: 1.0).animate(controller14),
                        child: const Text(
                          r"2.99$ monthly",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale:
                            Tween(begin: 0.0, end: 1.0).animate(controller15),
                        child: const Text(
                          "\nTwo cards,one space",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale:
                            Tween(begin: 0.0, end: 1.0).animate(controller16),
                        child: const Text(
                          "and billing repository.",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale:
                            Tween(begin: 0.0, end: 1.0).animate(controller17),
                        child: const Text(
                          "read all the features",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      ScaleTransition(
                        scale:
                            Tween(begin: 0.0, end: 1.0).animate(controller18),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "I want this",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
