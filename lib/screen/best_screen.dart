import 'package:flutter/material.dart';

class BestScreen extends StatefulWidget {
  const BestScreen({super.key});

  @override
  State<BestScreen> createState() => _BestScreenState();
}

class _BestScreenState extends State<BestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('베스트 도전'),
      ),
    );;
  }
}
