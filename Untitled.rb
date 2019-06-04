# The Fibonacci numbers, commonly denoted F(n) form a sequence, 
# called the Fibonacci sequence, such that each number is the sum of 
# the two preceding ones, starting from 0 and 1. That is,

# F(0) = 0,   F(1) = 1
# F(N) = F(N - 1) + F(N - 2), for N > 1.
# Given N, calculate F(N).

# def Fibonacci(n)
#     return 0 if n == 0
#     f_nums = [1,1]
#     (2..n-1).each do |idx|
#         f_nums << f_nums[-1] + f_nums[-2]
#     end
#     p f_nums.last
# end

# Fibonacci(2)


# Given a binary matrix A, we want to flip the image horizontally, 
# then invert it, and return the resulting image.

# To flip an image horizontally means that each row of the image is
# reversed.  For example, flipping [1, 1, 0] horizontally results in [0, 1, 1].

# To invert an image means that each 0 is replaced by 1, and each 1 is 
# replaced by 0. For example, inverting [0, 1, 1] results in [1, 0, 0].
# require "byebug"
# def flip_and_invert_image(array)
#     #debugger
#     array.map! do |sub_arr|
#         sub_arr.reverse
#         sub_arr.each_with_index do |ele, i|
#             if ele == 1
#                 sub_arr[i] = 0
#             else
#                 sub_arr[i] = 1
#             end
#         end
#     end
#     array
# end


# Given an array of integers A sorted in non-decreasing order, 
# return an array of the squares of each number, also in sorted
#  non-decreasing order.
# require ("byebug")
# def sorted_squares(a)
#     left = 0
#     right = (a.length) -1
#     answers = []
#     a.map!{|nums| nums * nums}
#     while left <= right
#         if a[left] > a[right]
#             answers.unshift(a[left])
#             left +=1
#         else
#             answers.unshift(a[right]) 
#             right -= 1
#         end
#     end
#     answers
# end
 


# p  sorted_squares([-4,-1,0,3,10]) # =>Output: [0,1,9,16,100]
# puts
# p  sorted_squares([-7,-3,2,3,11]) # =>Output: [4,9,9,49,121]



# p flip_and_invert_image([[1,1,0],[1,0,1],[0,0,0]]) # => Output: [[1,0,0],[0,1,0],[1,1,1]]
# puts
# p flip_and_invert_image([[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]) # => Output: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]


# Given a string, you need to reverse the order of characters 
# in each word within a sentence while still preserving whitespace 
# and initial word order.


def String_III(sentence)
    (sentence.split.map! {|word| word.reverse}).join(" ")
end


puts String_III("Let's take LeetCode contest") # => Output: "s'teL ekat edoCteeL tsetnoc"

