/*
Find the Second Largest Element in an Array
Problem Statement:
Given a list of integers, find the second largest element. 
If it doesn’t exist (e.g., all elements are the same or the list is too short), 
return a suitable value (like -1 or null).
*/

int? findSecondLargest(List<int> collection) {
  if (collection.isEmpty) return null;
  int? firstLargest, secondLargest;

  for (var element in collection) {
    if (firstLargest == null || element > firstLargest) {
      secondLargest = firstLargest;
      firstLargest = element;
    } else if (element < firstLargest && (secondLargest == null || element > secondLargest)) {
      secondLargest = element;
    }
  }
  return secondLargest;
}

int? findSecondLargestElement(List<int> numbers) {
  int? firstLargestNumber, secondLargestNumber;

  for (int num in numbers) {
    if (firstLargestNumber == null || num > firstLargestNumber) {
      secondLargestNumber = firstLargestNumber;
      firstLargestNumber = num;
    } else if (num != firstLargestNumber && (secondLargestNumber == null || num > secondLargestNumber)) {
      secondLargestNumber = num;
    }
  }

  return secondLargestNumber;
}
