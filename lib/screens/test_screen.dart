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

  //TODO スコア表示部分//156 動画
 Widget _scorePartU() {
    return Padding(padding: const EdgeInsets.only(left: 8.0, right: 8.0,top: 8.0 ),
     child: Table(
      children: [
        TableRow(
          children: [
            Center(child: Text("のこり問題数",style: TextStyle(fontSize: 10.0),)),
            Center(child: Text("正解数",style: TextStyle(fontSize: 10.0),)),
            Center(child: Text("正答率",style: TextStyle(fontSize: 10.0),)),
          ]
        ),
        TableRow(
          children: [
            Center(child: Text(numberOfRemaining.toString(),style: TextStyle(fontSize: 18.0),)),
            Center(child: Text(numberOfCorrect.toString(),style: TextStyle(fontSize: 18.0),)),
            Center(child: Text(correctRate.toString(),style: TextStyle(fontSize: 18.0),)),
          ],
        ),
      ],
     )
    );
 }
//TODO 問題表示部分
 Widget _questionPart() {
   return Row(children: [
     Expanded(flex: 2,child: Text(questionLeft.toString(),style: TextStyle(fontSize: 36.0),)),
     Expanded(flex: 1,child: Text(operator,style: TextStyle(fontSize: 30.0),)),
     Expanded(flex: 2,child: Text(questionRight.toString(), style: TextStyle(fontSize: 36.0),)),
     Expanded(flex: 1,child: Text("=",style:  TextStyle(fontSize: 30.0),)),
     Expanded(flex: 3,child: Text(answerString, style:  TextStyle(fontSize: 60.0),)),
     
     
     
     
   ],);// TODO ここではあとで書き換える
 }

 //TODO 電卓ボタン部分
 Widget _calcButtons() {
   return Container();// TODO ここではあとで書き換える
 }

//TODO 答え合わせボタン
  Widget _answerCheckButton() {
    return Container();// TODO ここではあとで書き換える
  }

  //TODO 戻る
  Widget _backButton() {
    return Container();// TODO ここではあとで書き換える
  }
}

