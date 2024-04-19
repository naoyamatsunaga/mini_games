import 'package:flutter/material.dart';

class NumeronPage extends StatelessWidget {
  const NumeronPage({super.key});

  final answertextsize = 80.0;

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
            Padding(
              padding: const EdgeInsets.all(20),
              // padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '?',
                    style: TextStyle(
                      fontSize: answertextsize,
                    ),
                  ),
                  Text(
                    '?',
                    style: TextStyle(
                      fontSize: answertextsize,
                    ),
                  ),
                  Text(
                    '?',
                    style: TextStyle(
                      fontSize: answertextsize,
                    ),
                  ),
                ],
              ),
            ),
            //答え_END//////////////////////////////

            //リスト_START//////////////////////////////
            Expanded(
              flex: 1,
              child: ListView(
                children: [
                  AnswerItem(),
                ],
              ),
            ),
            //リスト_END//////////////////////////////

            //回答欄_START//////////////////////////////
            Padding(
              padding: const EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 100),
                  const SizedBox(
                    width: 100,
                    child: TextField(
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 45,
                      ),
                      maxLength: 3,
                    ),
                  ),
                  const SizedBox(width: 50),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("GO"),
                  )
                ],
              ),
            ),
            //回答欄_END//////////////////////////////
          ],
        ),
      ),
    );
  }
}

class AnswerItem extends StatelessWidget {
  const AnswerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: Colors.red,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('No.'),
          SizedBox(width: 50),
          Text('XXX'),
          SizedBox(width: 50),
          Text('XEAT'),
          SizedBox(width: 30),
          Text('XBITE'),
        ],
      ),
    );
  }
}
