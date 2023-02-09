// This is an example of the widget : animated builder

import 'package:flutter/material.dart';
import 'dart:math' as math;

class Widget007 extends StatefulWidget {
  const Widget007({super.key});

  @override
  State<Widget007> createState() => _Widget007State();
}

class _Widget007State extends State<Widget007> with TickerProviderStateMixin {
  // tickerprovider provides value for vsync paramert
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 10), vsync: this)
        ..repeat();

  @override // nevver forget to dispose controllers
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Animated Builder '),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
          child: const FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}
