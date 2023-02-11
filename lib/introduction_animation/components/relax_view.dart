import 'package:flutter/material.dart';

class RelaxView extends StatelessWidget {
  final AnimationController animationController;

  const RelaxView({Key? key, required this.animationController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstHalfAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(
          0.0,
          0.2,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
    final secondHalfAnimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-1, 0)).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(
          0.2,
          0.4,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
    final textAnimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-2, 0)).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(
          0.2,
          0.4,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
    final imageAnimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-4, 0)).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(
          0.2,
          0.4,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );

    final relaxAnimation =
        Tween<Offset>(begin: const Offset(0, -2), end: const Offset(0, 0)).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(
          0.0,
          0.2,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
    return SlideTransition(
      position: firstHalfAnimation,
      child: SlideTransition(
        position: secondHalfAnimation,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: relaxAnimation,
                child: const Text(
                  "Relax",
                  style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                ),
              ),
              SlideTransition(
                position: textAnimation,
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 64, right: 64, top: 16, bottom: 16),
                  child: Text(
                    "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SlideTransition(
                position: imageAnimation,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 350, maxHeight: 250),
                  child: Image.asset(
                    'assets/introduction_animation/relax.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
