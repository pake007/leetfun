# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

# 思路：两个List同时前进，对应的Node做加法，并保存进位carry
def add_two_numbers(l1, l2)
  l_head = l_sum = ListNode.new(nil)
  carry = 0
  while l1 || l2 || carry > 0
    carry, l_sum.val = ((l1 ? l1.val : 0) + (l2 ? l2.val : 0) + carry).divmod(10)
    l1 = l1.next if l1
    l2 = l2.next if l2
    l_sum.next = (l1 || l2 || carry > 0) ? ListNode.new(nil) : nil
    l_sum = l_sum.next
  end
  return l_head
end


l1 = ListNode.new(5)
l1.next = nil


l2 = ListNode.new(5)
l2.next = nil

l3 = add_two_numbers(l1, l2)
ary = []
while l3
  ary.push(l3.val)
  l3 = l3.next
end

p ary