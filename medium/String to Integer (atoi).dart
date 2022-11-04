class Solution {
  static final int offset = '0'.codeUnitAt(0);
  static const int min = -2147483648;
  static const int max = 2147483647;

  int myAtoi(String s) {
    if (s.isEmpty) return 0;

    final length = s.length;

    var i = 0;
    String c;
    while ((c = s[i]) == ' ') {
      if (++i == length) return 0;
    }

    var negative = false;
    if (c == '-') {
      negative = true;
      i++;
    } else if (c == '+') {
      i++;
    }

    var result = 0;

    // for simplicity and speed, we use two loops for positive and negative values
    if (negative) {
      for (; i < length; i++) {
        final c = s.codeUnitAt(i) - offset;
        if (c < 0 || c > 9) break;
        result = result * 10 - c;
        if (result <= min) return min;
      }
    } else {
      for (; i < length; i++) {
        final c = s.codeUnitAt(i) - offset;
        if (c < 0 || c > 9) break;
        result = result * 10 + c;
        if (result >= max) return max;
      }
    }

    return result;
  }
}
