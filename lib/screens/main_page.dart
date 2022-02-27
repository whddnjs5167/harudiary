// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, override_on_non_overriding_member

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:harudiary/screens/emotion.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool showSpinner = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showSpinner = true;
  }

  @override
  Widget build(BuildContext context) {
    showSpinner = false;
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [],
    );
    return Scaffold(
      backgroundColor: Color(0xFFB1B2AE),
      appBar: AppBar(
        title: Text(
          'Diary',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: EdgeInsets.only(top: 60.0, left: 20.0),
          child: Column(
            children: [
              Text(
                '당신은 무슨 치킨을 가장 좋아하나요?',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 50.0)),
              Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: '답변을 입력하세요.'),
                  ),
                  ButtonTheme(
                    minWidth: 100.0,
                    height: 50.0,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmotionPage()));
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 35.0,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
