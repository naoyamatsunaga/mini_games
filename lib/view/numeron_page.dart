import 'package:flutter/material.dart';
import 'package:mini_games/model/numeron/numeron.dart';

class NumeronPage extends StatefulWidget {
  List<int> answer = [];
  Numeron numeron = Numeron();

  NumeronPage({super.key}) {
    answer = List.from(numeron.CreateRandomNumber());
  }

  @override
  State<NumeronPage> createState() => _NumeronPageState(numeron: numeron);
}

class _NumeronPageState extends State<NumeronPage> {
  // 定数・変数//////////////////////////////
  final Numeron numeron;

  // 答えの文字サイズ
  final answertextsize = 80.0;
  // 回答履歴
  late List<AnswerItem> answerItems = [];
  // 入力値
  late String answerText;

  _NumeronPageState({required this.numeron});

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
                    '${widget.answer[0]}',
                    style: TextStyle(
                      fontSize: answertextsize,
                    ),
                  ),
                  Text(
                    '${widget.answer[1]}',
                    style: TextStyle(
                      fontSize: answertextsize,
                    ),
                  ),
                  Text(
                    '${widget.answer[2]}',
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
              child: ListView.builder(
                itemCount: answerItems.length,
                itemBuilder: (context, index) {
                  return answerItems[index];
                },
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
                  SizedBox(
                    width: 100,
                    child: TextField(
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        answerText = value;
                      },
                      style: const TextStyle(
                        fontSize: 45,
                      ),
                      maxLength: 3,
                    ),
                  ),
                  const SizedBox(width: 50),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // 入力チェック
                        // 同じ数字が入力されていないこと
                        if (numeron.IsSameNumber(answerText)) {
                          return;
                        }
                        // TODO:判定処理
                        var result = numeron.CheckAnswer(answerText);
                        // $桁数EATの場合、終了、ボタン非活性
                        // 終了ボタン表示

                        answerItems.add(AnswerItem(
                          answerText: answerText,
                          answerNumber: answerItems.length + 1,
                          eatText: result.$1,
                          biteText: result.$2,
                        ));
                      });
                    },
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
  const AnswerItem({
    super.key,
    required this.answerText,
    required this.answerNumber,
    required this.eatText,
    required this.biteText,
  });

  final int answerNumber;
  final String answerText;
  final int eatText;
  final int biteText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('No.${answerNumber}'),
          SizedBox(width: 50),
          Text('${answerText}'),
          SizedBox(width: 50),
          Text('${eatText}EAT'),
          SizedBox(width: 30),
          Text('${biteText}BITE'),
        ],
      ),
    );
  }
}
