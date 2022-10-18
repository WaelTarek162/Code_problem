class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++)
      for (int j = 0; j < nums.length; j++) {
        if (i == j) continue;
        if (nums[i] + nums[j] == target) return [i, j];
      }
    return [0, 0];
  }
}
