import 'package:flutter/material.dart';

class TrainingCalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Training Calendar'),
      ),
      body: Center(
        child: Text(
          'Training calendar will be displayed here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
