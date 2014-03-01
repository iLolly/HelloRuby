#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: hash.rb
#         Desc: 
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage: 
#      Version: 0.0.1
#   LastChange: 2014-03-02 03:31:00
#      History:
#=============================================================================

require './global.rb'

num = Hash.new
num['a'] = 1
num['b'] = 2
num['c'] = 3
puts num # {'a'=>1, 'b'=>2, 'c'=>3}
puts num['b'] # -> 2

sum = num['a'] + num['b'] # 3

line

# 作为哈希的键，Symbol 对象比字符串更高效
num2 = {:a => 1, :b => 2, :c => 3}
puts num2
num3 = {a: 1, b: 2, c: 3}
puts num3
puts num3[:a] # -> 1
