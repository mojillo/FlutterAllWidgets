// Example of widget : Align

import 'package:flutter/material.dart';

class Widget005 extends StatefulWidget {
  const Widget005({super.key});

  @override
  State<Widget005> createState() => _Widget005State();
}

class _Widget005State extends State<Widget005> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Align = centerright'),
      ),
      body: Center(
        child: Container(
          height: 120,
          width: double.infinity,
          color: Colors.black54,
          child: const Align(
            alignment: Alignment.center,
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
