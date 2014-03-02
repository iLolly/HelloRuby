#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: symbol.rb
#         Desc: 符号
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage:
#      Version: 0.0.1
#   LastChange: 2014-03-03 02:18:47
#      History:
#=============================================================================
require './global.rb'

# 通过在一个标识符或者字符串的前面加上冒号的方式来表示一个符号字面量
:symbol
:"symbol"
:"another long symbol"
s = 'string'
sym = :"#{s}"
# 字面量语法
%s["]

# 符号常常被用于引用方法名
o = ['a', 'b', 'c']
puts o.respond_to? :each
name = :size
if o.respond_to? name
  o.send(name)
end
