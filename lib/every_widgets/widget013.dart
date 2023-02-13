// // This is an example of the widget : Animated Modal Barrier
// import 'package:flutter/material.dart';

// import 'dart:async';

// class Widget013 extends StatefulWidget {
//   const Widget013({super.key});

//   @override
//   State<Widget013> createState() => _Widget013State();
// }

// class _Widget013State extends State<Widget013>
//     with SingleTickerProviderStateMixin {
//   bool _isPressed = false;
//   late Widget _animatedModalBarrier;

//   late AnimationController _animationController;
//   late Animation<Color?> _colorAnimation;

//   @override
//   void initState() {
//     // we need a variable of colortween which is color transistion function
//     ColorTween colorTween = ColorTween(
//         begin: Colors.amberAccent.withOpacity(0.5),
//         end: Colors.blueGrey.withOpacity(0.5));

//     _animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 3));

//     _colorAnimation = colorTween.animate(_animationController);

//     _animatedModalBarrier =
//         AnimatedModalBarrier(color: _colorAnimation, dismissible: true);

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(' '),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Column(
//             children: <Widget>[
//               SizedBox(
//                 height: 100.0,
//                 width: 250.0,
//                 child: Stack(
//                   alignment: AlignmentDirectional.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           _isPressed = true;
//                         });
//                         _animationController.reset();
//                         _animationController.forward();
//                         Future.delayed(const Duration(seconds: 3), () {
//                           setState(() {
//                             _isPressed = false;
//                           });
//                         });
//                       },
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.amber),
//                       child: const Text('Press'),
//                     ),
//                     if (_isPressed) _animatedModalBarrier,
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
