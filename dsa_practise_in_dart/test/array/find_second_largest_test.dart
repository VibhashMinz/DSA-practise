import 'package:dsa_practise_in_dart/array/find_second_largest.dart';
import 'package:test/test.dart';

void main() {
  group('findSecondLargestElement', () {
    test("returns null for an empty array", () {
      expect(findSecondLargestElement([]), equals(null));
    });

    test("returns null when array has only one element", () {
      expect(findSecondLargestElement([5]), equals(null));
    });

    test("returns null when all elements of array are same", () {
      expect(findSecondLargestElement([10, 10, 10]), equals(null));
    });

    test("returns second largest of negative numbers", () {
      expect(findSecondLargestElement([12, -13, -18, -20, -1, -10]), equals(-1));
    });

    test("returns the second largest element for a normal arraY", () {
      expect(findSecondLargestElement([1, 5, 7, 10, 9, 16]), equals(10));
    });
  });
}
