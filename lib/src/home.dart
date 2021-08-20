import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart'; // youtube api

//home.dart 생성
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
      // youtube url 지정
  String videoURL = "https://www.youtube.com/watch?v=mqdPuKHO7ic";

  YoutubePlayerController _controller;

  @override
  void initState() {
             // youtube 영상 controller
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL),
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: true,
          isLive: true,
        )
    );

    super.initState();
  }

/*
*  home 화면에 구성할 영상 생성 ( yotube API 이용)
*  어플을 소개하는 간단한 글 작성
*
* */


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube Player"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
              Container(
                width: 300.0,
                height: 250.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey,
                    border: Border.all(width: 2.0)
                ),
                child: Text(
                  "안녕하세요. 스마트양식업입니다. "
                      "스마트 양식업에서는 양식업을 시작하시는 분들을 위한 다양한 어종의 정보를 제공하고"
                      " 실제 양식업에 종사하고 계시는 분들과 상담할 수 있는 커뮤니케이션 기능을 제공합니다."
                      " 양식업을 시작하기위해서 많은 정보와 궁금증이 있으신 분들께 아주 유용한 어플이 될것을 믿어 의심치 않습니다."
                      " 이용해주셔서 진심으로 감사드립니다.  -- Smart 양식업 --",
                  style : TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}