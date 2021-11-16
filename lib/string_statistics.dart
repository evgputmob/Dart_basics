class StringStatistics {
  // Функция для выборки чисел из строки
  static List<int> getNumsFromString(String str) {
    List<int> nums = [];
    int? num;
    str.split(' ').forEach((item) {
      num = int.tryParse(item);
      if (num != null) {
        nums.add(num!);
      }
    });
    return nums;
  }

  // Функция возвращает частотную статистику слов в массиве
  static Map<String, int> wordsStatistics(List<String> words) {
    Map<String, int> wCount = {};

    for (var item in words) {
      var w = item.toLowerCase();
      wCount[w] = (wCount[w] != null) ? (wCount[w]! + 1) : 1;
    }

    return wCount;
  }

  // Функция возвращает массив цифр, встречающихся в строке
  // в виде слов 'one', 'two' и т.д.
  static List<int> numsFromString(String str) {
    List<String> words = str.split(',');
    Set<int> nums = {};
    for (var item in words) {
      var w = item.toLowerCase().trim();
      switch (w) {
        case 'zero':
          nums.add(0);
          break;
        case 'one':
          nums.add(1);
          break;
        case 'two':
          nums.add(2);
          break;
        case 'three':
          nums.add(3);
          break;
        case 'four':
          nums.add(4);
          break;
        case 'five':
          nums.add(5);
          break;
        case 'six':
          nums.add(6);
          break;
        case 'seven':
          nums.add(7);
          break;
        case 'eight':
          nums.add(8);
          break;
        case 'nine':
          nums.add(9);
          break;
        default:
      }
    }
    return nums.toList();
  }
}
