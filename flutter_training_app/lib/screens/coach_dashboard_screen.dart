import 'package:flutter/material.dart';

class CoachDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coach Dashboard'),
      ),
      body: Center(
        child: Text(
          'Coach dashboard and training schedule approval will be here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
