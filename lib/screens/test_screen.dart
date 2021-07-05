import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  final numberOfQuestions;

  TestScreen({this.numberOfQuestions});

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
            children: <Widget>[
          //スコア表示部分
          _scorePartU(),
          //問題表示部分
          _questionPart(),
         //電卓ボタン部分
          _calcButtons(),
          //答え合わせボタン
          _answerCheckButton(),
           //戻るボタン
          _backButton(),
          //
        ]),
      ),
    );
  }

  //TODO スコア表示部分
 Widget _scorePartU() {}
//TODO 問題表示部分
 Widget _questionPart() {}

 //TODO 電卓ボタン部分
 Widget _calcButtons() {}
}

