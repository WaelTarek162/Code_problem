/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
      var new_list=null;
      var current =head;
      while(current?.val!=null){
          var next_node=current?.next;
          current?.next=new_list;
          new_list=current;
          current=next_node;
      }
      return new_list;

  }
}