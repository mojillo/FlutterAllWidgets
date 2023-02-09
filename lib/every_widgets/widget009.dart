// This is an example of the widget : Animated Cross Fade Widet
import 'package:flutter/material.dart';

class Widget009 extends StatefulWidget {
  const Widget009({super.key});

  @override
  State<Widget009> createState() => _Widget009State();
}

class _Widget009State extends State<Widget009> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Animated CrossFade Widget'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 100,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _bool = !_bool;
                  });
                },
                child: const Text(
                  'Switch',
                  style: TextStyle(color: Colors.yellow),
                ),
              ),
              AnimatedCrossFade(
                  firstChild: Image.asset(
                    '/home/p/Documents/fluttertests/assets/images/natgeoone.png',
                    height: 200,
                    width: 200,
                  ),
                  secondChild: Image.asset(
                    '/home/p/Documents/fluttertests/assets/images/natgeotwo.png',
                    height: 200,
                    width: 200,
                  ),
                  crossFadeState: _bool
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(seconds: 1))
            ],
          ),
        ),
      ),
    );
  }
}
