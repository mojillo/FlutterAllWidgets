//about dialog

import 'package:flutter/material.dart';

class Widget001 extends StatefulWidget {
  const Widget001({super.key});

  @override
  State<Widget001> createState() => _Widget001State();
}

class _Widget001State extends State<Widget001> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Dialog Box')),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const AboutDialog(
                  applicationIcon: FlutterLogo(),
                  applicationLegalese: 'Legalese',
                  applicationName: 'Flutter App',
                  applicationVersion: 'ver 1.0.0',
                  children: [
                    Text(
                        'This application designed by Parth Dave show casing all the avaialable flutter widgets'),
                  ],
                ),
              );
            },
            child: const Text('About')),
      ),
    );
  }
}
