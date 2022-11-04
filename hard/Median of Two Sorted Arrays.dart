class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
      List<int> nums3=nums1+nums2;
      nums3.sort();
      print(nums3);
      int len=nums3.length;
      if(len%2==0){return (nums3[(len/2).toInt()]+nums3[(len/2 -1).toInt()])/2;}
      return nums3[(len/2).toInt()]/1;

  }
}