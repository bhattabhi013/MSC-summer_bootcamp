import 'package:flutter_test/flutter_test.dart';

int sum(int a, int b) {
  return a + b;
}

void main() {
  group('sum function', () {
    test('should return the sum', () {
      // Arrange
      final int a = 2;
      final int b = 3;

      // Act
      final result = sum(a, b);

      // Assert
      expect(result, equals(5));
    });

    test('should return the zero sum', () {
      // Arrange
      final int a = 0;
      final int b = 0;

      // Act
      final result = sum(a, b);

      // Assert
      expect(result, equals(0));
    });
  });
}
