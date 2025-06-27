import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(FitnessTrainingApp());
}

class FitnessTrainingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Training App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
