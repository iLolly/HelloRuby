#!/usr/bin/env ruby -w
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: char.rb
#         Desc: 
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage: 
#      Version: 0.0.1
#   LastChange: 2014-03-01 02:04:06
#      History:
#=============================================================================

s = '2×2=4'
puts s
puts s.length   # -> 5
puts s.bytesize # -> 6
s.each_char { |x| print "#{x} " }
puts
puts s.encoding # -> UTF-8
t = '2*2=4'
puts t.encoding # -> UTF-8

puts '- ' * 30

v = "\xa4".force_encoding('utf-8') # 不是有效的 utf8 字符串
puts v.valid_encoding? # -> false

puts

euro1 = "\u20AC"
puts euro1
puts euro1.encoding # -> UTF-8
puts euro1.bytesize # -> 3

puts

euro2 = euro1.encode('iso-8859-15')
puts euro2.inspect
puts euro2.encoding
puts euro2.bytesize

puts

euro3 = euro2.encode('utf-8')
puts euro1 == euro3

puts

#puts "\u20AC".encode('iso-8859-1') # 无法转换报错

