# Arrays

## Introduction
An array is a collection of elements stored at contiguous memory locations. All elements are of the same type, and each element can be accessed by its index.

**Example in Dart:**
```dart
List<int> numbers = [1, 2, 3, 4, 5];
print(numbers[0]); // Output: 1
```

## Key Properties
- Fixed or dynamic size (in Dart, `List` is dynamic)
- Fast access by index: $O(1)$
- Insertion/deletion can be slow if not at the end: $O(n)$

## Common Use-Cases
- Storing lists of items (e.g., user IDs, scores)
- Implementing other data structures (stacks, queues)
- Buffering data for processing

## Dart List: Properties and Methods

Dart's `List` class provides many useful properties and methods for working with arrays in real-world applications. Here are the most important ones:

### Properties
- `length`: Returns the number of elements in the list.
- `isEmpty` / `isNotEmpty`: Checks if the list is empty or not.

### Methods
- `contains(element)`: Checks if the list contains a specific element.
- `indexOf(element)`: Finds the index of an element.
- `where((item) => ...)`: Filters elements based on a condition.
- `map((item) => ...)`: Transforms each element.
- `forEach((item) => ...)`: Iterates over each element.
- `reduce((value, element) => ...)`: Combines all elements into a single value.
- `sort()`: Sorts the list in place.
- `reversed`: Returns an iterable of the list in reverse order.
- `any((item) => ...)`: Checks if any element matches a condition.
- `every((item) => ...)`: Checks if all elements match a condition.
- `remove(element)`, `removeAt(index)`, `removeWhere((item) => ...)`: Removes elements.

### Examples
```dart
List<int> numbers = [1, 2, 3, 4, 5, 6];

// Filter even numbers
var evens = numbers.where((n) => n % 2 == 0).toList(); // [2, 4, 6]

// Search for a number
bool hasThree = numbers.contains(3); // true

// Find index of a number
int index = numbers.indexOf(4); // 3

// Transform each element
var squares = numbers.map((n) => n * n).toList(); // [1, 4, 9, 16, 25, 36]

// Iterate over elements
numbers.forEach((n) => print(n));

// Remove even numbers
numbers.removeWhere((n) => n % 2 == 0); // [1, 3, 5]
```

### Real-World Use Cases
- Filtering lists (e.g., search results, user lists)
- Searching for specific items (e.g., checking if a user exists)
- Transforming data for display (e.g., formatting, mapping)
- Removing unwanted items (e.g., filtering out inactive users)

## Interview Insights
Arrays are often used in coding interviews for problems involving searching, sorting, and manipulation. Understanding how to traverse, modify, and optimize array operations is crucial.

## Practice Problems
- Find the maximum element in an array
- Reverse an array
- Find the first non-repeating element
- Rotate an array by k steps
- Find the maximum sum subarray (Kadane’s Algorithm)
