import 'package:test/test.dart';
import 'package:dsa_practise_in_dart/array/find_max.dart';

void main() {
  group('findMax', () {
    test('returns the maximum for a normal array', () {
      expect(findMax([3, 7, 2, 9, 4]), equals(9));
    });

    test('returns the only element for a single-element array', () {
      expect(findMax([5]), equals(5));
    });

    test('returns null for an empty array', () {
      expect(findMax([]), equals(null));
    });

    test('returns the maximum for negative numbers', () {
      expect(findMax([-10, -3, -50, -1]), equals(-1));
    });
  });
}
