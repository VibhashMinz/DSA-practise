/*
Problem: Rotate an array to the right by k steps

Description: Given an array, rotate the array to the right by k steps, where k is non-negative.
Constraints:
Do this in-place with O(1) extra space if possible.
Aim for O(n) time complexity.
Examples:
Input: nums = [1,2,3,4,5,6,7], k = 3 → Output: [5,6,7,1,2,3,4]
Input: nums = [-1,-100,3,99], k = 2 → Output: [3,99,-1,-100]
Edge cases to consider:
k = 0 (no change)
k >= n (wrap-around; use k % n)
Empty array
Single-element array

*/

//Approach 1 — Split and Merge (Using Extra Array / List)
List<int> rotateArrayUsingSplit(List<int> numbers, int k) {
  int n = numbers.length;
  if (n == 0) return numbers;

  k = k % n; // handle if k > n

  if (k == 0) return numbers;

  //Split into two parts
  List<int> firstPart = numbers.sublist(0, n - k);
  print('first$firstPart');
  List<int> secondPart = numbers.sublist(n - k);
  print('second: $secondPart');

//combile
  List<int> result = [...secondPart, ...firstPart];
  return result;
}

void main() {
  print(rotateArrayUsingSplit([1, 2, 3, 4, 5, 6, 7], 3));
}
