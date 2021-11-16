class BinaryTransformation {
  // Функция для преобразования целого числа в двоичный вид
  static String intToBin(int n) {
    if (n < 0) {
      throw 'Only positive numbers are acceptable';
    }

    List<int> digits = [];
    int digit;
    do {
      digit = n & 1;
      digits.add(digit);
      n = n >> 1;
    } while (n > 0);

    return digits.reversed.join('');
  }

  // Функция для преобразования двоичного числа в виде строки
  // в целое число
  static int binToInt(String bin) {
    int result = 0;
    int power2 = 1;
    bin.split('').reversed.forEach((char) {
      if ((char != '0') && (char != '1')) {
        throw 'String must contain only 0 and/or 1';
      }
      result += (char == '1') ? power2 : 0;
      power2 *= 2;
    });
    return result;
  }
}
