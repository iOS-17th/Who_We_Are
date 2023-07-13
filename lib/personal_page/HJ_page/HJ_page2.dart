import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("간략한 인터뷰!"),
      ),
      body: Container(
        // top: true,
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional(1, -1),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1, -0.9),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 3),
                      child: SizedBox(
                        height: 40,
                        child: Text(
                          '간단한 자기 소개좀 해주세요',
                          style: TextStyle(
                            color: Color(0xFF0C0909),
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: SizedBox(
                  height: 40,
                  child: Text(
                    '캠핑과 프리다이빙을 좋아하는 인프피 입니다',
                    style: TextStyle(
                      color: Color(0xFF0C0909),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 3),
                child: SizedBox(
                  height: 40,
                  child: Text(
                    '성격의 장점은 ?',
                    style: TextStyle(
                      color: Color(0xFF0C0909),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: SizedBox(
                  height: 40,
                  child: Text(
                    '모나지 않은 무던함이나 포기하지 않는것',
                    style: TextStyle(
                      color: Color(0xFF0C0909),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 3),
                child: SizedBox(
                  height: 40,
                  child: Text(
                    '어떤 협업스타일을 추구 하나요',
                    style: TextStyle(
                      color: Color(0xFF0C0909),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: SizedBox(
                  height: 40,
                  child: Text(
                    '역할분담과 적절한 코칭으로 끝까지 함께',
                    style: TextStyle(
                      color: Color(0xFF0C0909),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 3),
                child: SizedBox(
                  height: 40,
                  child: Text(
                    '팀의 특징과 추구하는 목표는 무엇인가요',
                    style: TextStyle(
                      color: Color(0xFF0C0909),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: SizedBox(
                  height: 40,
                  child: Text(
                    '협업하는 분위기가 좋고 목표는 네카라구배 입니다',
                    style: TextStyle(
                      color: Color(0xFF0C0909),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 3),
                child: SizedBox(
                  height: 40,
                  child: Text(
                    '마지막으로 블로그좀 알려주세요',
                    style: TextStyle(
                      color: Color(0xFF0C0909),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                child: SizedBox(
                  height: 40,
                  child: Text(
                    'https://itgurwk.tistory.com/',
                    style: TextStyle(
                      color: Color(0xFF0C0909),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
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
}
