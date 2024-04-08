import 'package:flutter/material.dart';

class NumeronPage extends StatelessWidget {
  const NumeronPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Select MiniGame'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            child: const Text('Start'),
            onPressed: () {},
          ),
        ],
      )),
    );
  }
}
