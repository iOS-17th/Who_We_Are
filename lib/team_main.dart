import 'package:flutter/material.dart';
import 'package:who_we_are/personal_page/cherin_page.dart';
import 'package:who_we_are/personal_page/ubeeni_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageWidget(),
      routes: {
        '/team-leader': (context) => TeamLeaderPage(),
        '/sub-leader': (context) => SubLeaderPage(),
        '/presenter': (context) => PresenterPage(),
        //'/qna': (context) => QnAPage(),
        '/qna': (context) => QnAPage(),
        '/practicum': (context) => PracticumPage()
      },
    );
  }
}

class HomePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFFB80B0B),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Text(
              '17조 레오니다스팀',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          toolbarHeight: 100,
          elevation: 2,
        ),
      ),
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Container(
              width: 394,
              height: 377,
              decoration: BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://i.ibb.co/CtD7hK0/image.png',
                  width: 100,
                  height: 0,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.85),
              child: Container(
                width: 400,
                height: 240,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                alignment: AlignmentDirectional(-1, 1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/team-leader');
                        },
                        child: Text(
                          '대표팀장 : 김현승',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: AlignmentDirectional(-0.8, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                      SizedBox(height: 15),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/sub-leader');
                        },
                        child: Text(
                          '부팀장 : 윤혁진',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: AlignmentDirectional(-0.8, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                      SizedBox(height: 15),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/presenter');
                        },
                        child: Text(
                          '발표담당 : 박서영',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: AlignmentDirectional(-0.8, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                      SizedBox(height: 15),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/qna');
                        },
                        child: Text(
                          '질문답변담당 : 김유빈',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: AlignmentDirectional(-0.8, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                      SizedBox(height: 15),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/practicum');
                        },
                        child: Text(
                          '실습담당 : 박세찬',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: AlignmentDirectional(-0.8, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.54, -0.63),
              child: Text(
                'PROJECT NAME :',
                style: TextStyle(
                  fontFamily: 'Readex Pro',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.57, -0.53),
              child: Text(
                'This is Sparta!',
                style: TextStyle(
                  fontFamily: 'Readex Pro',
                  color: Color(0xFFFF0000),
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.42, -0.42),
              child: Text(
                '너무 빡세요',
                style: TextStyle(
                  fontFamily: 'Readex Pro',
                  color: Color(0xFFFF7500),
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeamLeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('대표팀장'),
      ),
      body: Center(
        child: Text('대표팀장 페이지'),
      ),
    );
  }
}

class SubLeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('부팀장'),
      ),
      body: Center(
        child: Text('부팀장 페이지'),
      ),
    );
  }
}

class PresenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('발표담당'),
      ),
      body: Center(
        child: Text('발표담당 페이지'),
      ),
    );
  }
}
