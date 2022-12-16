class Solution {
  int countDigitOne(int n) {


 	int base = 1, res = 0, last = 0;
	while(n >= base){
		int index = (n / base).toInt() % 10;
		int remain = n - (n / base).toInt() * base;
		if(index > 1){
			res = res + index * last + base;
		}else if(index == 1){
			res = res + index * last + remain + 1;
		}else{
			res = res + index * last;
		}
		last = last * 10 + base;
		base = base * 10;
	}
	return res;

      /*
      int count =0;
      for(int i=0;i<=n;i++){
          String s= i.toString();
          for(int j=0;j<s.length;j++)
              if(s[j]=='1')
                   count++;
      }
      return count;
*/




  }
}