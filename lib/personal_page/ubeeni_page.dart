import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QnAPage(),
    );
  }
}

class QnAPage extends StatefulWidget {
  const QnAPage({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<QnAPage> {
  final List<String> questions = [
    '나에 대한 설명',
    '객관적으로 살펴 본\n자신의 장점은?',
    '자신의 스타일, 협업 스타일 소개',
    '우리 팀만의 특징과\n추구하는 궁극적인 목표',
    '마지막 한마디?'
  ];

  final List<String> answers = [
    '김유빈\n\nISFJ\n\n무엇이든 일 벌이고 도전하는 스타일\n\nhttps://velog.io/@ubeeni',
    '책임감 있는 사람이다',
    '자신이 잘 할 수 있는 부분에 대해서\n최선을 다하면서\n모두가 함께 하는 프로젝트가 되길',
    '앞으로의 목표가 같은\n의미있는 한 팀으로 성장하자!',
    '할 수 있다!!🤍'
  ];

  final List<String> imageUrls = [
    'https://picsum.photos/seed/705/600',
    'https://picsum.photos/seed/710/600',
    'https://picsum.photos/seed/740/600',
    'https://picsum.photos/seed/746/600',
    'https://picsum.photos/seed/750/600',
  ];

  int currentPageIndex = 0;

  void goToNextPage() {
    setState(() {
      if (currentPageIndex < questions.length - 1) {
        currentPageIndex++;
      }
    });
  }

  void goToPreviousPage() {
    setState(() {
      if (currentPageIndex > 0) {
        currentPageIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'Q${currentPageIndex + 1}.',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Spacer(),
            Align(
              alignment: AlignmentDirectional.center,
              child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                speed: 400,
                fill: Fill.fillBack,
                front: Container(
                  width: 290,
                  height: 520,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.75,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            imageUrls[currentPageIndex],
                            width: 337,
                            height: 581,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          questions[currentPageIndex],
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                back: Container(
                  width: 290,
                  height: 520,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://url.kr/g2ecy5',
                            width: 300,
                            height: 599,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          answers[currentPageIndex],
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (currentPageIndex > 0)
                  ElevatedButton(
                    onPressed: goToPreviousPage,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                    ),
                    child: Text('이전'),
                  ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: goToNextPage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  child: Text(
                    currentPageIndex == questions.length - 1 ? '완료' : '다음',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
