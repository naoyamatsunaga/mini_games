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
        //答え_START//////////////////////////////
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // 余白をつけたいWidgetはPaddingで囲むことができる
            const Padding(
              padding: EdgeInsets.all(20),
              // padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '?',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  Text(
                    '?',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  Text(
                    '?',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ],
              ),
            ),
            //答え_END//////////////////////////////

            //リスト_START//////////////////////////////

            //リスト_END//////////////////////////////

            //回答欄_START//////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 80),
                const SizedBox(
                  width: 100,
                  child: TextField(
                    maxLength: 3,
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("GO"),
                )
              ],
            ),
            //回答欄_END//////////////////////////////
          ],
        ),
      ),
    );
  }
}
