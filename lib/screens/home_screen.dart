import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DropdownMenuItem<int>> _memuItems = [];
  int _numberOfQuestions = 0;

  @override
  void initState() {
    super.initState();
    setMenuItems();
    _numberOfQuestions = _memuItems[0].value!;
  }

  void setMenuItems() {
    //この中は、先生の動画と表示が違ってもOK
    _memuItems.add(DropdownMenuItem(value:10,child: Text("10"),));
    _memuItems.add(DropdownMenuItem(value:20,child: Text("20"),));
    _memuItems.add(DropdownMenuItem(value:30,child: Text("30"),));
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    var screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    print("ヨコ幅の論理ピクセル；$screenWidth");
    print("タテ幅の論理ピクセル；$screenHeight");

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/image_title.png"),
            SizedBox(height: 16.0,),
            Text("問題を選択して「スタート」ボタンを押してください"),
            //TODO プルダウン選択肢
            DropdownButton(
                items: _memuItems,
                value: _numberOfQuestions,
                 onChanged: (int? selectedValue){
                  setState(() {
                    _numberOfQuestions = selectedValue!;

                  });
                 },


                onChanged: (value) => print(value.toString()),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton.icon(
                  icon: Icon(Icons.skip_next),
                  onPressed: () => startTestScreen("おしたで～"),
                  label: Text("スタート"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),

                      //139 ホーム画面
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



  startTestScreen(String s) {

  }


}
