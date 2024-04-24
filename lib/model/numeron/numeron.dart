import 'dart:math';

class Numeron {
  // コンストラクタ //////////////////////////////
  Numeron();

  // 定数・変数 //////////////////////////////
  // 桁数
  final digit = 3;

  // 使用ナンバー
  final tempNumbers = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

  // 答え
  final List<int> answer = [];

  // メソッド //////////////////////////////
  // 問題作成
  List<int> CreateRandomNumber() {
    //作業用リスト
    List<int> workList = List<int>.from(tempNumbers);

    for (int i = 0; i < digit; i++) {
      var index = Random().nextInt(workList.length);
      answer.add(workList[index]);
      // 同じ数字が使われないよう、1度使用された数字は削除
      workList.removeAt(index);
    }

    return answer;
  }

  // 判定処理
  (int eat, int bite) CheckAnswer(String inputText) {
    var inputAnswer = inputText.split('');
    int eat = 0;
    int bite = 0;

    // x桁目が含まれているか？
    for (int i = 0; i < answer.length; i++) {
      if (IsBite(inputAnswer[i])) {
        if (IsEat(inputAnswer[i], i)) {
          eat += 1;
        } else {
          bite += 1;
        }
      }
    }

    return (eat, bite);
  }

  bool IsBite(String number) {
    return answer.contains(int.parse(number));
  }

  bool IsEat(String number, int index) {
    return index == answer.indexOf(int.parse(number));
  }
}
