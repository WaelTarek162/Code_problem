class Solution {
  bool isPalindrome(int x) {
    if (x < 0 || (x % 10 == 0 && x != 0)) {
      return false;
    }
    int reverse = 0;
    // slice in the middles, x = 1441, then after loop,
    // x = 14 and reverse = 14
    while (x > reverse) {
      reverse = reverse * 10 + x % 10;
      x = (x / 10).toInt();
    }
    // slice off the middle digit
    return x == reverse || x == (reverse / 10).toInt();
  }
}
