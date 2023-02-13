import 'dart:math';

import 'package:flutter/material.dart';

class CirclingBox extends StatefulWidget {
  const CirclingBox({super.key});

  @override
  State<CirclingBox> createState() => _CirclingBoxState();
}

class _CirclingBoxState extends State<CirclingBox>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 2 * pi).animate(_controller);
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Box that spins'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..rotateY(_animation.value),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(11),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
