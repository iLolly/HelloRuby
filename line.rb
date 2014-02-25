#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: line.rb
#         Desc: 
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage: 
#      Version: 0.0.1
#   LastChange: 2014-02-26 01:26:08
#      History:
#=============================================================================

# \ 对换行符进行转义，避免自动结束语句
hi = 'hi lolly' \
     ', GoodLuck!'
puts hi

# @1.9+
# 一行代码的第一个非空白字符是一个句点，
# 那么这一行将会被当成上一行的延续
animals = Array.new
  .push('dog')
  .push('cat')
  .push('cow')
  .push('fish')
  .sort
puts animals
