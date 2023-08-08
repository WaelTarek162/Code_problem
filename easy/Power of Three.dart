class Solution {
  bool isPowerOfThree(int n) {
    var x=n/3;
      if(n==3|| n==1)
      return true;
      else if(n<3|| x>(n/3).toInt())
      return false;
      else
      return isPowerOfThree(x.toInt());
  }
}