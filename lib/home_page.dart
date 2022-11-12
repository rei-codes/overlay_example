import 'package:flutter/material.dart';
import 'package:overlay_example/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.showToast('Flutter is awesome!'),
          child: const Text('Show Toast'),
        ),
      ),
    );
  }
}
