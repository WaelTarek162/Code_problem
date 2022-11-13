class Solution {
  String reverseWords(String s) {
    var res = s.split(' ');
    String ss = '';

    for (int i = res.length - 1; i >= 0; i--) {
      res[i] == ' ' || res[i] == '' ? res.removeAt(i) : ss += res[i] + ' ';
    }

    return ss.trim();
  }
}
