import 'package:flutter/material.dart';

class WebtoonScreen extends StatefulWidget {
  const WebtoonScreen({super.key});

  @override
  State<WebtoonScreen> createState() => _WebtoonScreenState();
}

class _WebtoonScreenState extends State<WebtoonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('웹툰'),
      ),
    );
  }
}
