=begin
整数numsの配列と整数targetが与えられたとき、targetに加算されるような2つの数値のインデックスを返す。

各入力は正確に1つの解を持つと仮定し、同じ要素を2回使用することはできません。

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.
=end

def two_sum(nums, target)
  dict = {}
  nums.each_with_index do |n, i|
    if dict[target - n]
      return dict[target - n], i
    end
    dict[n] = i
    puts dict
  end
end

puts two_sum([2, 7, 11, 15], 9)
