class Solution {
  void moveZeroes(List<int> nums) {
    int len = nums.length;
    for (int i = 0; i < len; i++) {
      if (nums[i] == 0) {
        nums.removeAt(i);
        nums.insert(len - 1, 0);
        len--;
        i--;
      }
    }
  }
}
