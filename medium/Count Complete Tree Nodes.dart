/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  int res = 1;
  int countNodes(TreeNode? root) {
    if (root?.val == null) return 0;

    if (root?.left == null && root?.right == null) {
      return res;
    }
    if (root?.left == null) {
      res++;
      return countNodes(root?.right);
    }
    if (root?.right == null) {
      res++;
      return countNodes(root?.left);
    } else {
      res += 2;
      countNodes(root?.left);
      countNodes(root?.right);
      return res;
    }
  }
}
