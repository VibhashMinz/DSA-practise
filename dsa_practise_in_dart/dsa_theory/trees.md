# Trees

## Introduction
A tree is a hierarchical data structure consisting of nodes, with a root node and child nodes forming subtrees.

**Example in Dart:**
```dart
class TreeNode {
  int data;
  TreeNode? left, right;
  TreeNode(this.data);
}
```

## Key Properties
- Hierarchical structure
- Fast search, insert, delete in balanced trees: $O(\,\log n)$

## Common Use-Cases
- Representing hierarchical data (e.g., DOM, file systems)
- Searching and sorting
- Expression parsing

## Interview Insights
Trees are used in problems involving traversal, searching, and balancing.

## Practice Problems
- Find the height of a binary tree
- Level order traversal
- Check if a tree is balanced
