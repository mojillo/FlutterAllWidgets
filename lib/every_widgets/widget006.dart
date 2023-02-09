// This is an example of the widget : Animated ALign
import 'package:flutter/material.dart';

class Widget006 extends StatefulWidget {
  const Widget006({super.key});

  @override
  State<Widget006> createState() => _Widget006State();
}

class _Widget006State extends State<Widget006> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align '),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Container(
            width: double.infinity,
            height: 259,
            color: Colors.amber,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
              duration: const Duration(seconds: 1),
              curve: Curves.linearToEaseOut,
              child: const FlutterLogo(
                size: 59,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
