class Solution {
  int reverse(int x) {
    int max = 0x7fffffff;
    int sign = x >= 0 ? 1 : -1;
    int result = 0;
    x = x.abs();
    while (x > 0) {
      if (max / 10 < result || (max - x % 10) < result * 10) {
        return 0;
      }
      result = result * 10 + x % 10;
      x = (x / 10).toInt();
    }

    return sign * result;
  }
}
