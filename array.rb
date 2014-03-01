#!/usr/bin/env ruby -w
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: array.rb
#         Desc:
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage:
#      Version: 0.0.1
#   LastChange: 2014-03-02 03:07:54
#      History:
#=============================================================================

require './global.rb'

a = [1, 2, 3]
b = [-10...0, 0..10,] # -10...0, 0..10
c = [[1, 2], [3, 4], [5]]
c[0] # 1, 2

x, y = 2, 1
puts d = [x+y, x-y, x*y] # array elements can be arbitrary expressions
line
e = []

# 表达数组的字面量
aa = %w[this is a test] # ['this', 'is', 'a', 'test']
ab = %W(this is a test)
ac = %w| [ ] ( ) { } |

empty = Array.new                # -> nil
nils = Array.new(3)              # -> nil, nil, nil
zeros = Array.new(4, 0)          # -> 0, 0, 0, 0
count = Array.new(3) { |i| i+1 } # -> 1, 2, 3

ba = [0, 1, 2, 3, 4, 5, 6]
ba[0]         # -> 0
ba[-1]        # -> 6
ba[-2]        # -> 5
ba[ba.size-1] # -> 6
ba[ba.size]   # -> nil

ba[0] = 'lolly'
ba[-1] = 1..16
ba[10] = 64
print ba
puts
line

ba = ('a'..'e').to_a # [a, b, c, d, e]
ba[0, 0]   # -> nil
ba[1, 1]   # -> b
ba[-2, 2]  # -> d, e
ba[0..2]   # -> a, b, c
ba[-2..-1] # -> d, e
ba[0...-1] # -> a, b, c, d

#ca = ['a', 'b', 'c', 'd', 'e']
ca = %w(a b c d e)
ca[0, 2] = ['A', 'B'] # ['A', 'B', 'c', 'd', 'e']
ca[2..5] = %w(C D E)  # ['A', 'B', 'C', 'D', 'E']
ca[0, 0] = %w(1 2 3)  # ['1', '2', '3', 'A', 'B', 'C', 'D', 'E']
ca[0..2] = []         # ['A', 'B', 'C', 'D', 'E']
ca[-1, 1] = ['Z']     # ['A', 'B', 'C', 'D', 'Z']
ca[-1, 1] = 'Z'       # ['A', 'B', 'C', 'D', 'Z']
ca[-2, 2] = nil       # ['A', 'B', 'C', nil]
# + 操作符将创建一个新数组，它包含左右两个数组的所有元素
ca = ca + [1, 2, 3]   # ['A', 'B', 'C', nil, 1, 2, 3]
ca = ca - ['A', 'C']  # ['B', nil, 1, 2, 3]
ca << 5               # ['B', nil, 1, 2, 3, 5]
ca << 6 << 7          # ['B', nil, 1, 2, 3, 5, 6, 7]
ca << [8, 9, 10]      # ['B', nil, 1, 2, 3, 5, 6, 7, [8, 9, 10]]
ca = [0] * 8          # [0, 0, 0, 0, 0, 0, 0, 0]

da = [1, 1, 2, 2, 3, 3, 4]
db = [5, 5, 4, 4, 3, 3, 2]
da | db # [1, 2, 3, 4, 5]
db | da # [5, 4, 3, 2, 1]
da & db # [2, 3, 4]
