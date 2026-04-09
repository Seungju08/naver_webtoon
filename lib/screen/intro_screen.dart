import 'package:flutter/material.dart';
import 'package:naver_webtoon/screen/main_screen.dart';
import 'package:naver_webtoon/utils.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  void startAnimation() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushAndRemoveUntil(PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
      return MainScreen();
    }, transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    }, transitionDuration: Duration(milliseconds: 500), barrierColor: Colors.white), (route) => false);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => startAnimation());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: sizew(context),
        height: sizeh(context),
        decoration: BoxDecoration(
          color: Color(0xffDDFFE7),
        ),
        alignment: .center,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/logo.png'), fit: .cover),
            ),
          ),
        ),
      ),
    );
  }
}
