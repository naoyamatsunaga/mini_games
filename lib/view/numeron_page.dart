import 'package:flutter/material.dart';

class NumeronPage extends StatelessWidget {
  const NumeronPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Numeron'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '?',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  Text('?'),
                  Text('?'),
                ],
              ),
            ),
            Container(
              width: 100,
              child: TextField(
                maxLength: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
