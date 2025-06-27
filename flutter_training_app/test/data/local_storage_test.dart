import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mockito/mockito.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('Data write/read and persistence', () async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('key', 'value');
    expect(prefs.getString('key'), 'value');
  });

  test('Corrupt data and missing fields', () async {
    SharedPreferences.setMockInitialValues({'key': null});
    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getString('key'), null);
  });
}
