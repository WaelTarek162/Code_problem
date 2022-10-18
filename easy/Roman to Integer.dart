class Solution {
  int romanToInt(String s) {
    var maap = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };

    int total = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == 'I')
        total += 1;
      else if (s[i] == 'V')
        total += 5;
      else if (s[i] == 'X')
        total += 10;
      else if (s[i] == 'L')
        total += 50;
      else if (s[i] == 'C')
        total += 100;
      else if (s[i] == 'D')
        total += 500;
      else if (s[i] == 'M') total += 1000;
    }

    for (int i = 0; i < s.length - 1; i++) {
      if (maap[s[i]]! < maap[s[i + 1]]!) {
        total -= (maap[s[i]]!).toInt();
        total -= (maap[s[i]]!).toInt();
        i++;
      }
    }

    return total;
  }
}
