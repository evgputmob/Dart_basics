import 'dart:math';

class DelimetersCalculator {
  // Функция для нахождения НОД
  static int gcd(int a, int b) {
    void swap() {
      int tmp = a;
      a = b;
      b = tmp;
    }

    a = a.abs();
    b = b.abs();

    if (a < b) {
      swap();
    }
    while (b > 0) {
      a %= b;
      swap();
    }
    return a;
  }

  // Функция для нахождения НОК
  static int lcm(int a, int b) {
    a = a.abs();
    b = b.abs();
    return (a ~/ gcd(a, b)) * b;
  }

  // Функция для разложения на множители
  static List<int> factorize(int x) {
    x = x.abs();
    final factors = <int>[];
    for (int i = 2; i <= sqrt(x); i++) {
      while (x % i == 0) {
        factors.add(i);
        x = x ~/ i;
      }
    }
    if (x != 1) {
      factors.add(x);
    }
    return factors;
  }
}
