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

//Approach 1 — Split and Merge (Using Extra Array / List)  Space Complexity - O(n) Time Complexity O(n)
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

//Approach 2: Reverse Method (In-place) ---- Space Complexity - O(1) Time Complexity - O(n)

rotate(List<int> nums, int k) {
  int n = nums.length;
  if (n == 0) return;

  k = k % n;
  if (k == 0) return;
  reverse(nums, 0, n - 1); // reverse whole elements of the array
  reverse(nums, 0, k - 1);
  reverse(nums, k, n - 1);
  return nums;
}

void reverse(List<int> numbers, int start, int end) {
  while (start < end) {
    int temp = numbers[start];
    numbers[start] = numbers[end];
    numbers[end] = temp;
    start++;
    end--;
  }
}

void main() {
  print(rotateArrayUsingSplit([2, 3, 4, 5, 6, 7], 3));
  print(rotate([2, 3, 4, 5, 6, 7], 3));
}
