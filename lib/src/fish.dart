import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

//fish.dart 생성
class Fish extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FishState();
  }
}

Color PrimaryColor = Color(0xff109618);

@override
class _FishState extends State<Fish> {
    // 각 어종의 종류마다 필요한 영상 url 지정
  String videoURL = "https://www.youtube.com/watch?v=6pZY_ja6HNg";
  String songURL = "https://www.youtube.com/watch?v=bKuXhx9O_ko";
  String godngURL = "https://www.youtube.com/watch?v=f3YHnXKbOFk";
  String domURL = "https://www.youtube.com/watch?v=qtkz37k5ID0";
  String bangURL = "https://www.youtube.com/watch?v=IC12pE3Xqo8";

  YoutubePlayerController _controller;
  YoutubePlayerController _songController;
  YoutubePlayerController _godngController;
  YoutubePlayerController _domController;
  YoutubePlayerController _bangController;
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

    _songController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(songURL),
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: true,
          isLive: true,
        )
    );

    _godngController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(godngURL),
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: true,
          isLive: true,
        )
    );

    _domController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(domURL),
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: true,
          isLive: true,
        )
    );

    _bangController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(bangURL),
        flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: true,
          isLive: true,
        )
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery
        .of(context)
        .size
        .height;

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: AppBar(
            backgroundColor: Colors.indigo,
            bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 6.0,
              onTap: (index) {
                setState(() {
                  switch (index) {
                    case 0:
                      PrimaryColor = Color(0xffff5722);
                      break;
                    case 1:
                      PrimaryColor = Color(0xff3f51b5);
                      break;
                    case 2:
                      PrimaryColor = Color(0xffe91e63);
                      break;
                    default:
                  }
                });
              },
              //각 어종을 나누는 탭 생성
              tabs: <Widget>[
                Tab(
                  child: Container(
                    child: Text(
                      '연어',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '송어',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '고등어',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '강성돔',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '방어',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // 각 어종에 필요한 정보 출력을 위한 TabBarview
        body: TabBarView(
          children: <Widget>[
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                    ),
                    DataTable(
                      columns: [
                        DataColumn(label:Text('입식량(천마리)')),
                        DataColumn(label:Text('생산량(M/T)')),
                        DataColumn(label:Text('생산금액(백만원)')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('140')),
                          DataCell(Text('1')),
                          DataCell(Text('12')),
                        ]),
                      ],
                    ),
                    DataTable(
                      columns: [
                        DataColumn(label:Text('행정구역')),
                        DataColumn(label:Text('양식방법별')),
                        DataColumn(label:Text('현사육량(천마리)')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('강원도')),
                          DataCell(Text('육상수조식')),
                          DataCell(Text('221')),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    YoutubePlayer(
                      controller: _songController,
                      showVideoProgressIndicator: true,
                    ),
                    DataTable(
                      columns: [
                        DataColumn(label:Text('입식량(천마리)')),
                        DataColumn(label:Text('생산량(M/T)')),
                        DataColumn(label:Text('생산금액(백만원)')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('175')),
                          DataCell(Text('1')),
                          DataCell(Text('12')),
                        ]),
                      ],
                    ),
                    DataTable(
                      columns: [
                        DataColumn(label:Text('양식방법별')),
                        DataColumn(label:Text('현사육량(천마리)')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('해상가두리, 육상수조식')),
                          DataCell(Text('256')),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    YoutubePlayer(
                      controller: _godngController,
                      showVideoProgressIndicator: true,
                    ),
                    DataTable(
                      columns: [
                        DataColumn(label:Text('입식량(천마리)')),
                        DataColumn(label:Text('생산량(M/T)')),
                        DataColumn(label:Text('생산금액(백만원)')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('925')),
                          DataCell(Text('153')),
                          DataCell(Text('2,137')),
                        ]),
                      ],
                    ),
                    DataTable(
                      columns: [
                        DataColumn(label:Text('양식방법별')),
                        DataColumn(label:Text('현사육량(천마리)')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('해상가두리, 육상수조식')),
                          DataCell(Text('807')),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    YoutubePlayer(
                      controller: _domController,
                      showVideoProgressIndicator: true,
                    ),
                    DataTable(
                      columns: [
                        DataColumn(label:Text('입식량(천마리)')),
                        DataColumn(label:Text('생산량(M/T)')),
                        DataColumn(label:Text('생산금액(백만원)')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('5,662')),
                          DataCell(Text('464')),
                          DataCell(Text('7,267')),
                        ]),
                      ],
                    ),
                    DataTable(
                      columns: [
                        DataColumn(label:Text('양식방법별')),
                        DataColumn(label:Text('현사육량(천마리)')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('해상가두리, 육상수조식')),
                          DataCell(Text('18,539')),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    YoutubePlayer(
                      controller: _bangController,
                      showVideoProgressIndicator: true,
                    ),
                    DataTable(
                      columns: [
                        DataColumn(label:Text('입식량(천마리)')),
                        DataColumn(label:Text('생산량(M/T)')),
                        DataColumn(label:Text('생산금액(백만원)')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('46')),
                          DataCell(Text('154')),
                          DataCell(Text('2,552')),
                        ]),
                      ],
                    ),
                    DataTable(
                      columns: [
                        DataColumn(label:Text('양식방법별')),
                        DataColumn(label:Text('현사육량(천마리)')),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('해상가두리, 축제식')),
                          DataCell(Text('79')),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}