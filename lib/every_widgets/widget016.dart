//  example of 3d animation , flutters rendering engine is 2d and has problem rendering 3d graphics

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

const widthAndHeight = 100.0;

class RotatingCube extends StatefulWidget {
  const RotatingCube({super.key});

  @override
  State<RotatingCube> createState() => _RotatingCubeState();
}

class _RotatingCubeState extends State<RotatingCube>
    with TickerProviderStateMixin {
  //define animation controllers and since our cube runs in 3d space we need one for each axis
  late AnimationController _xController;
  late AnimationController _yController;
  late AnimationController _zController;
  //animation is changed to tween , because if we use animation we have to call the animation at the end of declaration where as here with tween get the actual object back
  late Tween<double> _animation;

  // intialize the controllers and animations

  @override
  void initState() {
    super.initState();
    _xController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 21),
    );

    _yController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 31),
    );

    _zController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 41),
    );

    _animation = Tween<double>(
      begin: 0,
      end: pi * 2,
    );
  }

  @override
  void dispose() {
    _xController.dispose();
    _yController.dispose();
    _zController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Declare some build functions to start the animations controlelrs and their Animations

    _xController
      ..reset()
      ..repeat();

    _yController
      ..reset()
      ..repeat();

    _zController
      ..reset()
      ..repeat();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Rotating Cube'),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: widthAndHeight, width: double.infinity),
            //Using only one animated builder instead of 3 as displayed in spinning circle
            AnimatedBuilder(
              animation: Listenable.merge([
                _xController,
                _yController,
                _zController,
              ]),
              builder: (context, child) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..rotateX(_animation.evaluate(_xController))
                    ..rotateY(_animation.evaluate(_yController))
                    ..rotateZ(_animation.evaluate(_zController)),
                  child: Stack(
                    children: [
                      //back
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..translate(Vector3(0, 0, -widthAndHeight)),
                        child: Container(
                          color: Colors.red,
                          width: widthAndHeight,
                          height: widthAndHeight,
                          child: const Center(child: Text('6')),
                        ),
                      ),
                      //topside
                      Transform(
                        alignment: Alignment.topCenter,
                        transform: Matrix4.identity()..rotateX(-pi / 2),
                        child: Container(
                          color: Colors.white60,
                          width: widthAndHeight,
                          height: widthAndHeight,
                          child: const Center(child: Text('2')),
                        ),
                      ),
                      //bottomeside
                      Transform(
                        alignment: Alignment.bottomCenter,
                        transform: Matrix4.identity()..rotateX(pi / 2),
                        child: Container(
                          color: Colors.transparent,
                          width: widthAndHeight,
                          height: widthAndHeight,
                          child: const Center(child: Text('3')),
                        ),
                      ),
                      //left
                      Transform(
                        alignment: Alignment.centerLeft,
                        transform: Matrix4.identity()..rotateY(pi / 2),
                        child: Container(
                          color: Colors.cyan,
                          width: widthAndHeight,
                          height: widthAndHeight,
                          child: const Center(child: Text('4')),
                        ),
                      ),
                      // right
                      Transform(
                        alignment: Alignment.centerRight,
                        transform: Matrix4.identity()..rotateY(-pi / 2),
                        child: Container(
                          color: Colors.yellow,
                          width: widthAndHeight,
                          height: widthAndHeight,
                          child: const Center(child: Text('5')),
                        ),
                      ),

                      //front
                      Container(
                        color: Colors.green,
                        width: widthAndHeight,
                        height: widthAndHeight,
                        child: const Center(child: Text('1')),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        )));
  }
}
