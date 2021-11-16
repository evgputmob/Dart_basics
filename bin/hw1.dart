import 'package:hw1/delimeters_calculator.dart';
import 'package:hw1/binary_transformation.dart';
import 'package:hw1/string_statistics.dart';
import 'package:hw1/point.dart';
import 'package:hw1/root_n.dart';
import 'package:hw1/user.dart';
import 'package:hw1/user_manager.dart';

void main() {
  // Задание #1 ------------------------
  int a;
  int b;
  a = 35;
  b = 21;
  var gcd = DelimetersCalculator.gcd(a, b);
  print('The greatest common divisor of $a and $b is: $gcd');

  a = 6;
  b = 7;
  var lcm = DelimetersCalculator.lcm(a, b);
  print('The least common multiple of $a and $b is: $lcm');

  a = 777;
  var factorize = DelimetersCalculator.factorize(a);
  print('The list of factors of $a: $factorize');

  print('#');

  // Задание #2 ------------------------
  a = 256;
  print(BinaryTransformation.intToBin(a));
  String s = '11001';
  print(BinaryTransformation.binToInt(s));

  print('#');

  // Задание #3 ------------------------
  String str = 'one two three 4 five 6 7 eight nine the end';
  print(StringStatistics.getNumsFromString(str));

  print('#');

  // Задание #4 ------------------------
  List<String> words = [
    'The',
    'quick',
    'brown',
    'fox',
    'jumps',
    'over',
    'the',
    'lazy',
    'dog',
    'FOX',
    'QuicK'
  ];
  print(StringStatistics.wordsStatistics(words));

  print('#');

  // Задание #5 ------------------------
  str = 'one, two, too, tree, three, zero, Zero, Zorro, one';
  print(StringStatistics.numsFromString(str));

  print('#');

  // Задание #6 ------------------------
  Point p1 = Point(2, 3, 2);
  Point p2 = Point(3, 4, 5);
  Point p3 = const Point.origin();
  Triangle tr1 = Triangle(p1, p2, p3);

  print(p1.distanceTo(p2));
  print(tr1.getSquare());

  print('#');

  // Задание #7 ------------------------
  a = 27;
  print(a.rootN(3));

  print('#');

  // Задание #8 ------------------------
  var user1 = AdminUser('support@mail.ru');
  var user2 = GeneralUser('pupkin@mail.ru');
  var user3 = GeneralUser('vasiliy@yandex.ru');
  var user4 = GeneralUser('maria@rambler.ru');
  var user5 = AdminUser('ivan@google.com');
  var userManager = UserManager();

  userManager.addUser(user1);
  userManager.addUser(user2);
  userManager.addUser(user3);
  userManager.addUser(user3);
  userManager.addUser(user4);
  userManager.addUser(user5);
  userManager.removeUser(user2);

  userManager.printUsers();

  print('#');
}
