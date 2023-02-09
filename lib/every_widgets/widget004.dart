//alert dialog
import 'package:flutter/material.dart';

class Widget004 extends StatelessWidget {
  const Widget004({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        actions: [
                          TextButton.icon(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                  Icons.dashboard_customize_outlined),
                              label: const Text('Close')),
                        ],
                        title: const Text('Test'),
                        contentPadding: const EdgeInsets.all(20),
                        content: const Text(
                            'This alert box can have custom content'),
                      ));
            },
            child: const Text('Custome Alert Dialog')),
      ),
    );
  }
}
