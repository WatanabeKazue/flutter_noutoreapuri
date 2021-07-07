import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  final numberOfQuestions;

  TestScreen({this.numberOfQuestions});

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  late int numberOfRemaining = 0;
  late int numberOfCorrect = 0;
  late int correctRate = 0;

  int questionLeft = 5;
  int questionRight = 5;
  String operator = "+";
  String answerString = "10";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                _scorePart(),
                //問題表示部分
                _questionPart(),
                //電卓ボタン部分
                _calcButtons(),
                //答え合わせボタン
                _answerCheckButton(),
                //戻るボタン
                _backButton(),
              ],
              //スコア表示部分

              //
            ),
            //〇・×画像
            _correctIncorrectImage(),
            //テスト終了メッセージ
            _endMessage(),
          ],
        ),
      ),
    );
  }

  //TODO 〇・バツ画像
  Widget _correctIncorrectImage() {
    if(isCorrectInCorrectImageEnabled == true){
    return Center(child: Image.asset("assets/images/pic_correct.png"));
  }else{
      return Container();
    }
    }

  //TODO テスト終了メッセージ
  Widget _endMessage() {
    return Center(child: Text("テスト終了",style: TextStyle(fontSize: 40.0),));
  }

  //TODO スコア表示部分//156 動画
  Widget _scorePart() {
    return Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
        child: Table(
          children: [
            TableRow(children: [
              Center(
                  child: Text(
                "のこり問題数",
                style: TextStyle(fontSize: 10.0),
              )),
              Center(
                  child: Text(
                "正解数",
                style: TextStyle(fontSize: 10.0),
              )),
              Center(
                  child: Text(
                "正答率",
                style: TextStyle(fontSize: 10.0),
              )),
            ]),
            TableRow(
              children: [
                Center(
                    child: Text(
                  numberOfRemaining.toString(),
                  style: TextStyle(fontSize: 18.0),
                )),
                Center(
                    child: Text(
                  numberOfCorrect.toString(),
                  style: TextStyle(fontSize: 18.0),
                )),
                Center(
                    child: Text(
                  correctRate.toString(),
                  style: TextStyle(fontSize: 18.0),
                )),
              ],
            ),
          ],
        ));
  }

//TODO 問題表示部分
  Widget _questionPart() {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Text(
              questionLeft.toString(),
              style: TextStyle(fontSize: 36.0),
            )),
        Expanded(
            flex: 1,
            child: Text(
              operator,
              style: TextStyle(fontSize: 30.0),
            )),
        Expanded(
            flex: 2,
            child: Text(
              questionRight.toString(),
              style: TextStyle(fontSize: 36.0),
            )),
        Expanded(
            flex: 1,
            child: Text(
              "=",
              style: TextStyle(fontSize: 30.0),
            )),
        Expanded(
            flex: 3,
            child: Text(
              answerString,
              style: TextStyle(fontSize: 60.0),
            )),
      ],
    ); // TODO ここではあとで書き換える
  }

  //TODO 電卓ボタン部分
  Widget _calcButtons() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 50.0),
        child: Table(children: [
          TableRow(children: [
            _calcButton("7"),
            _calcButton("8"),
            _calcButton("9"),
          ]),
          TableRow(children: [
            _calcButton("4"),
            _calcButton("5"),
            _calcButton("6"),
          ]),
          TableRow(children: [
            _calcButton("1"),
            _calcButton("2"),
            _calcButton("3"),
          ]),
          TableRow(children: [
            _calcButton("0"),
            _calcButton("_"),
            _calcButton("c"),
          ]),
        ]),
      ),
    );
  }

  Widget _calcButton(String numString) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent,
        ),
        onPressed: () => print(numString), //TODO
        child: Text(
          numString,
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }

//TODO 答え合わせボタン
  Widget _answerCheckButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: RaisedButton(
          onPressed: () => null, //print(numString),
          child: Text(
            "答え合わせ",
            style: TextStyle(fontSize: 14.0),
          ),
        ),
      ),
    ); // TODO ここではあとで書き換える
  }

  //TODO 戻る
  Widget _backButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
          ),
          onPressed: null, //TODO
          child: Text(
            "もどる",
            style: TextStyle(fontSize: 14.0),
          ),
        ),
      ),
    ); // TODO ここではあとで書き換える
  }
}
