#!/usr/bin/env ruby -w
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: number.rb
#         Desc:
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage:
#      Version: 0.0.1
#   LastChange: 2014-02-27 00:26:38
#      History:
#=============================================================================

puts 0.class
puts 123456789.class  # -> Fixnum
puts -12345678.class
puts 1234567890.class # -> Bignum
puts 1_000_000_000    # -> 1000000000 # "_": 千分符

puts 0xFF             # -> 255

## Float
puts 0.0.class        # -> Float
puts -3.14.class      # -> Float
puts 6.02e10          # -> 60200000000.0

puts 5/2              # -> 2
puts 5.0/2            # -> 2.5
puts 5/2.0            # -> 2.5
# %: 计算整数除法的余数
puts 5%2              # -> 1
puts 1.5%0.4          # -> 0.29999999999999993

puts 0.4 - 0.3        # -> 0.10000000000000003
puts 0.4 - 0.3 == 0.1 # -> false
