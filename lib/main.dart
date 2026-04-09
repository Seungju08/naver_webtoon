import 'package:flutter/material.dart';
import 'package:naver_webtoon/screen/intro_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    ),
  );
}
