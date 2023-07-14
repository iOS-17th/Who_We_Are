import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SY_page_feed.dart';

class PresenterPage extends StatelessWidget {
  const PresenterPage({super.key}); // 생성자
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://i.ibb.co/XC2Hrm0/Kakao-Talk-20230712-132848789-03.jpg",
      "https://i.ibb.co/7SH8rY8/Kakao-Talk-20230712-132848789-04.jpg",
      "https://i.ibb.co/0qkHgyZ/Kakao-Talk-20230712-132848789-01.jpg",
      "https://i.ibb.co/zFbKN34/Kakao-Talk-20230712-132848789-2.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0.5,
        leading: Row(
          children: [
            SizedBox(width: 16),
            Text(
              '박서영',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.black,
            ),
          ],
        ),
        leadingWidth: 100,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_rounded, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell, color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: images.length, // 이미지 개수만큼 보여주기
          itemBuilder: (context, index) {
            final image = images[index]; // index에 해당하는 이미지
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Feed(imageUrl: image), // imageUrl 전달
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 233, 92, 251),
        elevation: 1,
        child: Icon(
          Icons.add_rounded,
          size: 36,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined),
            label: 'Life',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fmd_good_outlined),
            label: 'like',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'my',
          ),
        ],
        currentIndex: 0,
      ),
    );
  }
}
