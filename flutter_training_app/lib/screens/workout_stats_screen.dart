import 'package:flutter/material.dart';

class WorkoutStatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Stats'),
      ),
      body: Center(
        child: Text(
          'Workout statistics will be displayed here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
