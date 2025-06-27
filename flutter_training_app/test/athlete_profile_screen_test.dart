import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training_app/ui/athlete_profile_screen.dart'; // Adjust path if needed

void main() {
  testWidgets('AthleteProfileScreen displays data and allows editing', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AthleteProfileScreen()));

    // Check if profile info fields are loaded
    expect(find.byKey(const Key('athleteName')), findsOneWidget);
    expect(find.byKey(const Key('athleteAge')), findsOneWidget);

    // Simulate editing
    await tester.enterText(find.byKey(const Key('athleteName')), 'Jane Doe');
    await tester.enterText(find.byKey(const Key('athleteAge')), '28');

    // Tap Save button
    await tester.tap(find.byKey(const Key('saveProfileButton')));
    await tester.pumpAndSettle();

    // Verify save logic occurred (ideally with success toast or navigation)
    expect(find.textContaining('Saved'), findsOneWidget); // Adjust based on actual behavior
  });
}
