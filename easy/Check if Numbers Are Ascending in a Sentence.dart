class Solution {
  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return int.tryParse(s) != null;
  }

  bool areNumbersAscending(String s) {
    var token = s.split(' ');
    int prev = 0;
    // print(token);

    for (int i = 0; i < token.length; i++) {
      if (isNumeric(token[i])) {
        print(token[i]);
        var numb = int.parse(token[i]);
        if (prev >= numb) {
          print(numb);
          return false;
        } else {
          print(numb);
          prev = numb;
        }
      }
    }
    return true;
  }
}
