#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: expression.rb
#         Desc: 表达式
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage:
#      Version: 0.0.1
#   LastChange: 2014-02-26 01:34:33
#      History:
#=============================================================================

puts [1, 2, 3, 4, 5] # 一个数组

hash = {1 => 'one', 2 => 'two'} # 哈希
hash.each do |k, v|
  puts "#{k}, #{v}"
end

range = 1..6 # 值域
range.each { |x| print "#{x} " }

puts

y = 1
if y < 10 then
  y = y + 1
end
puts y

while y < 10 do
  print "#{y} "
  y = y + 1
end
