import 'package:flutter/material.dart';
import 'fish.dart';
import 'home.dart';
//import 'expert.dart';
import 'kakao.dart';

//hompage.dart 생성
class HomePage extends StatefulWidget {
  @override
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

Color PrimaryColor = Color(0xff109618);  // primary color 지정

@override
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(95),
          child: AppBar(              // 상위 appbar 생성
            backgroundColor: Colors.indigo,
            title: Center(child: Text(
                'Smart 양식업', style: TextStyle(color: Colors.black))),
            bottom: TabBar(
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
              tabs: <Widget>[   // appbar 아래 tap 생성
                Tab(
                  child: Container(
                    child: Text(
                      'HOME',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '어종',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '카카오 채널',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(   // 각 탭마다 구현할수있는 함수 지정
          children: <Widget>[
            Home(),
            Fish(),
            //Expert(),
            Kakao(),
          ],
        ),
      ),
    );
  }
}