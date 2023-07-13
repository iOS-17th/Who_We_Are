// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'HJ_page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: const FirstPage(),
    theme: ThemeData(fontFamily: 'Robota'),
    themeMode: ThemeMode.system,
  );
}

// 첫 번째 페이지
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("안녕하세요17조 윤혁진입니다"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("인터뷰 보기"),
          onPressed: () {
            // 페이지 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}
