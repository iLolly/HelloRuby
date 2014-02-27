#!/usr/bin/env ruby -w
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: char.rb
#         Desc: 
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage: 
#      Version: 0.0.1
#   LastChange: 2014-02-28 02:12:51
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

eurol = "\u20AC"
puts eurol
puts eurol.encoding # -> UTF-8
puts eurol.bytesize # -> 3
