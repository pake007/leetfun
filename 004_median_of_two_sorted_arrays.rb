# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
# 思路，设置两个哨兵p1,p2,分别指向nums1, nums2的元素, 哪个小，就将指向的元素放入总数组，并向前走一步
# 如此循环，直到总数组的长度等于两个数组长度之和的一半
def find_median_sorted_arrays(nums1, nums2)
  total = []
  p1 = 0; p2 = 0
  size_a = nums1.size
  size_b = nums2.size
  median_index = (size_a + size_b)
  loop do
    if p2 >= size_b || (p1 < size_a && nums1[p1] <= nums2[p2])
      total << nums1[p1]
      p1 += 1
    elsif p1 >= size_a || (p2 < size_b && nums1[p1] > nums2[p2])
      total << nums2[p2]
      p2 += 1
    end
    if total.size == median_index/2 + 1
      return median_index.odd? ? total.last.to_f : (total[-1] + total[-2]) / 2.0
    end
  end
end

p find_median_sorted_arrays([8,9,10], [1,2,3])