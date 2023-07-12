import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:who_we_are/main.dart';

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
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Color(0xFF060606)),
            automaticallyImplyLeading: true,
            title: Align(
              alignment: AlignmentDirectional(0, -0.15),
              child: Text(
                '제 이름은 박세찬입니다 ! 잘 부탁드립니다 !\n아래 카드를 눌러보세요 ! \n제 TMI들이 나올거에요 !',
                textAlign: TextAlign.end,
                maxLines: 4,
                style: TextStyle(fontSize: 20),
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 1,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: 441,
            height: 870,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -0.9),
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    speed: 400,
                    front: Container(
                      width: 316,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '전 이런걸 좋아해요 !',
                        ),
                      ),
                    ),
                    back: Container(
                      width: 316,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: AlignmentDirectional(0, 0),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '아기자기한거 좋아해서,\n여기저기 아기자기하게 꾸미구 다녀요 !',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -0.55),
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    speed: 400,
                    front: Container(
                      width: 316,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '전 이런걸 즐겨요 !',
                        ),
                      ),
                    ),
                    back: Container(
                      width: 316,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '흔히들 프론트엔드라고 부르는 화면 구성이나,\n일상에서는 뭔가 그리는 걸 즐겨요',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -0.2),
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    speed: 400,
                    front: Container(
                      width: 316,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '이런건 지켜주세요 !',
                        ),
                      ),
                    ),
                    back: Container(
                      width: 316,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '만약 제가 예민하게 군다구 하더라도,\n웃으면서 지나가주세요 !\n언젠가는 나아질거에요 !',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.15),
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    speed: 400,
                    front: Container(
                      width: 316,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF00D046),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '저는 이런 사람이에요 !',
                        ),
                      ),
                    ),
                    back: Container(
                      width: 316,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF00D046),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          '여성적이구 아기자기함을 즐기지만,\n그만큼 잘 웃고 피드백이 있다면 잘 듣기도 해요 !',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
