import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_training_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Full app navigation flow', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    // TODO: Add navigation and flow assertions here
    expect(find.text('Home'), findsOneWidget);
  });
}
