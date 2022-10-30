class Solution {
  int removeElement(List<int> nums, int val) {
      int occ=0;
      int len=nums.length;
      int len1=nums.length;
      for(int i=0; i< len ;i++){
          if(nums[i]==val){
              occ+=1;
              nums.removeAt(i);
              len--;
              i--;
              
          }
      }
      return len1-occ;

  }
}
