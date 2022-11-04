class Solution {
  int removeDuplicates(List<int> nums) {
      var sett=nums.toSet();
      for(int i=0;i<sett.length;i++){
          nums[i]=sett.elementAt(i);
      }
      int x=nums.length;
      for(int i=sett.length;i<x;i++){
          nums.removeAt(nums.length-1);
      }
      return nums.length;
  }
}