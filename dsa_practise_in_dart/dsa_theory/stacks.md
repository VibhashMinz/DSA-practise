# Stacks

## Introduction
A stack is a linear data structure that follows the Last-In, First-Out (LIFO) principle. Elements are added and removed from the top.

**Example in Dart:**
```dart
List<int> stack = [];
stack.add(1); // push
int top = stack.removeLast(); // pop
```

## Key Properties
- LIFO order
- Fast push/pop operations: $O(1)$

## Common Use-Cases
- Undo/redo functionality
- Expression evaluation
- Syntax parsing

## Interview Insights
Stacks are used in problems involving parentheses validation, expression conversion, and backtracking.

## Practice Problems
- Implement a stack using arrays
- Validate parentheses in a string
- Evaluate a postfix expression
