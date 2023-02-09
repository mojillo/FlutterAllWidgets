// This is an example of the widget : Animated Icon
import 'package:flutter/material.dart';

class Widget011 extends StatefulWidget {
  const Widget011({super.key});

  @override
  State<Widget011> createState() => _Widget011State();
}

class _Widget011State extends State<Widget011> with TickerProviderStateMixin {
  // this is needed to provide vsync
  bool _isPlay = false;
  late AnimationController _controller; // provides animation to the controller

  @override //constructor of controller
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
  }

  @override // destructor or dispose for the controller once its done with
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Icon '),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (_isPlay == false) {
              _controller.forward();
              _isPlay = true;
            } else {
              _controller.reverse();
              _isPlay = false;
            }
          },
          child: AnimatedIcon(
              icon: AnimatedIcons.play_pause, progress: _controller, size: 100),
        ),
      ),
    );
  }
}
