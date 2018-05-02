# @param {String} s
# @return {Integer}

# 思路：一旦在result数组里找到和当前循环的字符相同的字符，则更新longest_length为当前result的长度（如果longest_length小于result的长度）
# 接着，将result数组shift，移除找到的字符和之前的部分，再将当前循环的字符push进result数组
# 循环完毕后，再比一次longest_length和result数组的长度，取大值
def length_of_longest_substring(s)
  result = []
  longest_length = 0
  s.chars.each do |c|
    c_index = result.index(c)
    if c_index
      longest_length = result.size if longest_length < result.size
      result.shift(c_index + 1)
    end
    result << c
  end
  [longest_length, result.size].max
end

p length_of_longest_substring("abcdabcde")
p length_of_longest_substring("dvde")
