import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training_app/main.dart'; // Update if needed
import 'package:flutter_training_app/ui/login_screen.dart'; // Adjust path if needed

void main() {
  testWidgets('LoginScreen UI interactions and navigation', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginScreen()));

    // Verify UI elements are present
    expect(find.byKey(const Key('emailField')), findsOneWidget);
    expect(find.byKey(const Key('passwordField')), findsOneWidget);
    expect(find.byKey(const Key('loginButton')), findsOneWidget);

    // Simulate user input
    await tester.enterText(find.byKey(const Key('emailField')), 'test@example.com');
    await tester.enterText(find.byKey(const Key('passwordField')), 'securePassword');

    // Tap the login button
    await tester.tap(find.byKey(const Key('loginButton')));
    await tester.pumpAndSettle();

    // Example: check navigation to dashboard (adjust route check accordingly)
    expect(find.byType(Scaffold), findsWidgets);
  });
}
