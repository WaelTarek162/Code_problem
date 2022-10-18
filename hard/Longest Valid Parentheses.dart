class Solution {
  int longestValidParentheses(String s) {
    List<int> stack = [];
    int n = s.length;
    int len = 0;
    int maxlen = 0;
    stack.add(-1);
    for (int i = 0; i < n; i++) {
      if (s[i] == '(') stack.add(i);
      if (s[i] == ')') {
        stack.removeLast();
        if (stack.isEmpty) stack.add(i);
        len = i - stack[stack.length - 1];
        maxlen = maxlen >= len ? maxlen : len;
      }
    }
    return maxlen;
  }
}
