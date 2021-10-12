=begin
Given an integer x, return true if x is palindrome integer.

An integer is a palindrome when it reads the same backward as forward. For example, 121 is palindrome while 123 is not.

整数 x が与えられたとき、x が回文整数であれば true を返す。

整数は、後ろ向きに読んでも前向きに読んでも同じになる場合、回文になります。例えば、121 は回文ですが、123 は回文ではありません。
=end

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x == x.to_s.reverse.to_i && !x.negative?
end

# Runtime: 132 ms, faster than 28.98% of Ruby online submissions for Palindrome Number.
# Memory Usage: 209.9 MB, less than 67.12% of Ruby online submissions for Palindrome Number.


# best
def is_palindrome(x)
    return false if x < 0
    return true if x < 10
    x.to_s == x.to_s.reverse
end
# Runtime: 88 ms, faster than 99.13% of Ruby online submissions for Palindrome Number.
# Memory Usage: 9.4 MB, less than 100.00% of Ruby online submissions for Palindrome Number.