# Linked Lists

## Introduction
A linked list is a linear data structure where each element (node) contains a value and a reference (pointer) to the next node in the sequence.

**Example in Dart:**
```dart
class Node {
  int data;
  Node? next;
  Node(this.data);
}
```

## Key Properties
- Dynamic size
- Efficient insertion/deletion at any position: $O(1)$
- Slower access by index: $O(n)$

## Common Use-Cases
- Implementing stacks and queues
- Undo functionality in applications
- Memory management

## Interview Insights
Linked lists are used in problems involving dynamic memory allocation, reversal, and cycle detection.

## Practice Problems
- Reverse a linked list
- Detect a cycle in a linked list
- Find the middle element
- Merge two sorted linked lists
