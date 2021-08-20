import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';  // URL API

void main() => runApp(Kakao());

class Kakao extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(title: "Url",home: kakaoch());
  }
}

class kakaoch extends StatefulWidget {
  @override
  _kakaochState createState() => _kakaochState();
}

// kakao channer에 연결하기위 한 링크 버튼 생성 및 url 연결
class _kakaochState extends State<kakaoch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RaisedButton(child:Text("kakao channel"),onPressed: (){openurl();},)
    );
  }
  openurl ()
  {
    String url1="http://pf.kakao.com/_WxdDDxb";
    launch(url1);
  }
}

