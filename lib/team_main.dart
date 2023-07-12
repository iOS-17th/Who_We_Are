import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
    );
  }
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);
  @override
  HomePageWidgetState createState() => HomePageWidgetState();
}

class HomePageWidgetState extends State<HomePageWidget> {
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
                child: Align(
                  alignment: AlignmentDirectional(-0.8, 0),
                  child: Text(
                    '대표팀장 : 김현승\n\n부팀장 : 윤혁진\n\n발표담당 : 박서영\n\n질문답변담당 : 김유빈\n\n실습담당 : 박세찬\n',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
