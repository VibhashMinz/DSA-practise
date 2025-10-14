/*

Problem Set: Hash Maps and Sorted Arrays
Problem 1: Two Sum with a Twist (Hash Map Focus)
Goal: Practice leveraging Hash Maps to optimize search time from O(n 
2
 ) to O(n).

The Problem:
Given an unsorted array of integers nums and a target integer target, return the indices of the two numbers in nums that add up to target. Assume exactly one solution exists, and you may not use the same element twice.

Example:

nums = [4, 7, 2, 11], target = 9

Output: [1, 2] (because 7+2=9. Index of 7 is 1, index of 2 is 2.)

Complexity Goal:

Time Complexity: Must be O(n) (Linear Time).

Space Complexity: Must be O(n) (because you'll use a Hash Map).

Hint: Think about what number you need to find as you iterate through the list. 
Can you store past numbers you've seen and their indices for quick lookup?

*/
// nums = [4, 7, 2, 11], target = 9
List<int>? twoSumWithTwist(List<int> numbers, int target) {
  if (numbers.isEmpty) return null;

  Map<int, int> seen = {}; // to stroe past numbers seen and their indices

  for (var i = 0; i < numbers.length; i++) {
    int constrain = target - numbers[i];
    print('target is $target, when number is ${numbers[i]} then constrain is: $constrain');
    if (seen.containsKey(constrain)) {
      return [seen[constrain]!, i];
    }
    seen[numbers[i]] = i;
    print('seen: $seen');
  }
  return null;
}

// nums = [4, 7, 2, 11], target = 9
List<int>? twoSum(List<int> numbers, int target) {
  if (numbers.isEmpty) return null;
  Map<int, int> seen = {};
  return null;
}

void main() {
  List<int> numbers = [4, 7, 2, 10, 12];
  int target = 11;
  twoSumWithTwist(numbers, target);
}
