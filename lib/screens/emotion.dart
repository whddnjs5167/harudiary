// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmotionPage extends StatefulWidget {
  const EmotionPage({Key? key}) : super(key: key);

  @override
  _EmotionPageState createState() => _EmotionPageState();
}

class _EmotionPageState extends State<EmotionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
    );
  }
}
