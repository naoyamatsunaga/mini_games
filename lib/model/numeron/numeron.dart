import 'dart:math';

class Numeron {
  // 桁数
  final digit = 3;

  // 使用ナンバー
  final tempNumbers = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

  // 問題作成
  List<int> CreateRandomNumber() {
    //作業用リスト
    List<int> workList = List<int>.from(tempNumbers);
    // 返却用リスト
    List<int> answer = [];

    for (int i = 0; i > digit; i++) {
      var index = Random().nextInt(workList.length);
      answer.add(workList[index]);

      // 同じ数字が使われないよう、1度使用された数字は削除
      workList.removeAt(index);
    }

    return answer;
  }

  // 判定処理
  void CheckAnswer() {}
}
