import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'mock_services.mocks.dart';

void main() {
  late MockAuthService mockAuth;
  late MockTrainingApiService mockApi;

  setUp(() {
    mockAuth = MockAuthService();
    mockApi = MockTrainingApiService();
  });

  test('Mocked AuthService login success', () async {
    when(mockAuth.login('user@example.com', 'pass123')).thenAnswer((_) async => true);
    final result = await mockAuth.login('user@example.com', 'pass123');
    expect(result, isTrue);
    verify(mockAuth.login(any, any)).called(1);
  });

  test('Mocked TrainingApiService fetch fails', () async {
    when(mockApi.getTrainingPlan()).thenThrow(Exception('Server error'));
    expect(() => mockApi.getTrainingPlan(), throwsException);
  });
}
