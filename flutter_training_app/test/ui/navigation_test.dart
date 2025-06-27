import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training_app/main.dart';

void main() {
  testWidgets('UI navigation across all screens', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    // Home screen
    expect(find.text('Home'), findsOneWidget);
    // Navigate to Coach Dashboard
    await tester.tap(find.byIcon(Icons.dashboard));
    await tester.pumpAndSettle();
    expect(find.text('Coach Dashboard'), findsOneWidget);
    // Navigate to Training Calendar
    await tester.tap(find.byIcon(Icons.calendar_today));
    await tester.pumpAndSettle();
    expect(find.text('Training Calendar'), findsOneWidget);
    // Navigate to Workout Stats
    await tester.tap(find.byIcon(Icons.bar_chart));
    await tester.pumpAndSettle();
    expect(find.text('Workout Stats'), findsOneWidget);
  });
}
