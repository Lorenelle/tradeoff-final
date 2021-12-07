import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static String id = 'main_screen';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        'HomePage',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
