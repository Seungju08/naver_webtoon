import 'package:flutter/material.dart';
import 'package:naver_webtoon/screen/best_screen.dart';
import 'package:naver_webtoon/screen/cuts_screen.dart';
import 'package:naver_webtoon/screen/my_screen.dart';
import 'package:naver_webtoon/screen/plus_screen.dart';
import 'package:naver_webtoon/screen/webtoon_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          WebtoonScreen(),
          CutsScreen(),
          BestScreen(),
          MyScreen(),
          PlusScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        // unselectedItemColor: ,
        onTap: (value) {
          _currentIndex = value;
          setState(() {});
        },
        type: .fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: '웹툰'),
          BottomNavigationBarItem(icon: Icon(Icons.slideshow), label: '컷츠'),
          BottomNavigationBarItem(icon: Icon(Icons.stars_outlined), label: '베스트도전'),
          BottomNavigationBarItem(icon: Icon(Icons.sentiment_satisfied), label: 'MY'),
          BottomNavigationBarItem(icon: Icon(Icons.widgets_outlined), label: '더보기'),
        ],
      ),
    );
  }
}
