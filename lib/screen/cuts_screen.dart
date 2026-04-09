import 'package:flutter/material.dart';

class CutsScreen extends StatefulWidget {
  const CutsScreen({super.key});

  @override
  State<CutsScreen> createState() => _CutsScreenState();
}

class _CutsScreenState extends State<CutsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('컷츠'),
      ),
    );
  }
}
