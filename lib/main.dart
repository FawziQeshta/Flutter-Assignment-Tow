import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const AssignmentTowApp());
}

class AssignmentTowApp extends StatelessWidget {
  const AssignmentTowApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}