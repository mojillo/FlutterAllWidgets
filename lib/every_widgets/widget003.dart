//absorbpointer

import 'package:flutter/material.dart';

class Widget003 extends StatelessWidget {
  const Widget003({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('absorb pointer'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SizedBox(
              width: 250,
              height: 100,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('box1 stacked')),
            ),
            SizedBox(
              width: 100,
              height: 250,
              child: AbsorbPointer(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent),
                    onPressed: () {},
                    child: const Text(
                        'box2 stacked which has no click animation')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
