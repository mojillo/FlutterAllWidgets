// This is an example of the widget :
import 'package:flutter/material.dart';

class Widget008 extends StatefulWidget {
  const Widget008({super.key});

  @override
  State<Widget008> createState() => _Widget008State();
}

class _Widget008State extends State<Widget008> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container '),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(seconds: 2),
              width: selected ? 200 : 100,
              height: selected ? 100 : 200,
              color: selected ? Colors.blueGrey : Colors.black45,
              alignment: selected ? Alignment.center : Alignment.topCenter,
              curve: Curves.fastLinearToSlowEaseIn,
              child: const FlutterLogo(
                size: 112,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
