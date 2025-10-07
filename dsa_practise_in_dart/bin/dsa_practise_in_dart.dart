import 'package:dsa_practise_in_dart/array/find_max.dart';
import 'package:dsa_practise_in_dart/array/find_second_largest.dart';
import 'package:dsa_practise_in_dart/dsa_practise_in_dart.dart' as dsa_practise_in_dart;

void main(List<String> arguments) {
  List<int> collection = [-12, 18, 0, 25, 91, -56, 79, 222, 222, 100, -102];
  print('Hello world: ${dsa_practise_in_dart.calculate()}!');
  print(findMax(collection));
  print(findSecondLargest(collection));
  print(findSecondLargestElement(collection));
}
