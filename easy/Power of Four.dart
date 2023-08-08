class Solution {
  bool isPowerOfTwo(int n) {

    var x=n/2;
      if(n==2|| n==1)
      return true;
      else if(n<2|| x>(n/2).toInt())
      return false;
      else
      return isPowerOfTwo(x.toInt());
  

  }
}