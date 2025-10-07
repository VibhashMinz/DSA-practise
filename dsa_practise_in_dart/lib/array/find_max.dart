/*1. Easy: Find the Maximum Element in an Array
Problem:
Given a list of integers, find the maximum element.
 */

int? findMax(List<int> collection) {
  if (collection.isEmpty) {
    return null;
  }
  int max = collection[0];
  for (int i = 1; i < collection.length; i++) {
    if (collection[i] > max) {
      max = collection[i];
    }
  }
  return max;
}

void main() {
  List<int> numbers = [3, 7, 2, 9, 4];
  print(findMax(numbers)); // Output: 9

  List<int> emptyList = [];
  print(findMax(emptyList)); // Output: null
}
