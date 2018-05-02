# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {Array} ary
# @return {Integer}
def array_to_num(ary)
  ary.each_with_index.inject(0) do |sum, (e, index)|
    sum += e * 10 ** (ary.size - index - 1)
  end
end

def list_to_array(list)
  a = []
  l = list
  while l
    a.push(l.val)
    l = l.next
  end
  a.reverse
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  a1, a2 = [], []
  a1, a2 = list_to_array(l1), list_to_array(l2)
  sum = array_to_num(a1) + array_to_num(a2)
  sum_digits = sum.to_s.chars.map(&:to_i).reverse
end



l1 = ListNode.new(2)
l1.next = ListNode.new(4)
l1.next.next = ListNode.new(3)
l1.next.next.next = nil

l2 = ListNode.new(5)
l2.next = ListNode.new(6)
l2.next.next = ListNode.new(4)
l2.next.next.next = nil

p add_two_numbers(l1, l2)