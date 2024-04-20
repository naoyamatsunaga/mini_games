import 'package:flutter/material.dart';
import 'package:mini_games/model/numeron/numeron.dart';

class NumeronPage extends StatelessWidget {
  // 定数・変数
  final answertextsize = 80.0;

  List<int> answer = [0, 0, 0];

  // コンストラクタ
  NumeronPage({super.key}) {
    Numeron numeron = Numeron();
    answer = List.from(numeron.CreateRandomNumber());
  }

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
              padding: const EdgeInsets.all(0),
              // padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${answer[0]}',
                    style: TextStyle(
                      fontSize: answertextsize,
                    ),
                  ),
                  Text(
                    '${answer[1]}',
                    style: TextStyle(
                      fontSize: answertextsize,
                    ),
                  ),
                  Text(
                    '${answer[2]}',
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
              child: ListView(
                children: [
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                  AnswerItem(),
                ],
              ),
            ),
            //リスト_END//////////////////////////////

            //チェックシート_START//////////////////////////////
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                color: Colors.yellow,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('0'),
                    Text('1'),
                    Text('2'),
                    Text('3'),
                    Text('4'),
                    Text('5'),
                    Text('6'),
                    Text('7'),
                    Text('8'),
                    Text('9'),
                  ],
                ),
              ),
            ),
            //チェックシート_END///////////////////////////

            //回答欄_START//////////////////////////////
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
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
