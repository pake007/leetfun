# @param {String} s
# @return {String}

# 思路：找到一个子串后，向两边扩散，直到找到更长的子串, 使用manacher算法消除奇偶性和重复子串检测
def longest_palindrome(s)
  longest_s = ""
  # 消除奇偶性，类似abba这种偶对称的子串变为 #a#b#b#a#
  sa = "#" + s.each_char.map(&:itself).join("#") + "#"

end