import 'package:flutter/material.dart';
import 'package:fluttertests/every_widgets/widget005.dart';
import 'package:fluttertests/every_widgets/widget009.dart';
import 'package:fluttertests/every_widgets/widget010.dart';
import 'package:fluttertests/every_widgets/widgets008.dart';
import 'every_widgets/widget002.dart';
import 'every_widgets/widget003.dart';
import 'every_widgets/widget004.dart';
import 'every_widgets/widget006.dart';
import 'every_widgets/widget011.dart';
import 'every_widgets/widget012.dart';
import 'every_widgets/widget_001.dart';
import 'every_widgets/widgets007.dart';

void main() {
  runApp(MaterialApp(
    title: 'route',
    home: const MyApp(),
    theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.purple),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget001()));
                },
                child: const Text('001- About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget002()));
                },
                child: const Text('002- AboutList'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget003()));
                },
                child: const Text('003- AbsorbPointer'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget004()));
                },
                child: const Text('004- Alert Dialog'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget005()));
                },
                child: const Text('005- Alignments'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget006()));
                },
                child: const Text('006- Animated Alignment'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget007()));
                },
                child: const Text('007- AnimatedBuilder'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget008()));
                },
                child: const Text('008- AnimatedBox'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget009()));
                },
                child: const Text('009- Animated Cross Fade'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget010()));
                },
                child: const Text('010- Animated Text Style'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget011()));
                },
                child: const Text('011- Animated Icon'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget001()));
                },
                child: const Text('001- About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget012()));
                },
                child: const Text('012- Animated List'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget001()));
                },
                child: const Text('001- About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget001()));
                },
                child: const Text('001- About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget001()));
                },
                child: const Text('001- About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget001()));
                },
                child: const Text('001- About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget001()));
                },
                child: const Text('001- About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget001()));
                },
                child: const Text('001- About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget001()));
                },
                child: const Text('001- About'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Widget001()));
                },
                child: const Text('001- About'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Home Screen')),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text(
//             'Navigate to a new screen >>',
//             style: TextStyle(fontSize: 24.0),
//           ),
//           onPressed: () {
//             _navigateToNextScreen(context);
//           },
//         ),
//       ),
//     );
//   }

//   void _navigateToNextScreen(BuildContext context) {
//     Navigator.of(context)
//         .push(MaterialPageRoute(builder: (context) => NewScreen()));
//   }
// }

// class NewScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('New Screen')),
//       body: const Center(
//         child: Text(
//           'This is a new screen',
//           style: TextStyle(fontSize: 24.0),
//         ),
//       ),
//     );
//   }
// }

// 