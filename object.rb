#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: object.rb
#         Desc:
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage:
#      Version: 0.0.1
#   LastChange: 2014-03-03 02:32:58
#      History:
#=============================================================================
require './global.rb'

s = 'Ruby'
t = s
t[-1] = ''
puts s # -> Rub
t = 'Lolly'
puts s, t # -> RubLolly

line

# ## 对象的类和对象的类型
o = 'test'
puts o.class                       # -> String
puts o.class.superclass            # -> Object
puts o.class.superclass.superclass # -> BasicObject
puts o.class == String             # -> true
puts o.instance_of? String         # -> true

line

x = 1
puts x.instance_of? Fixnum         # -> true
puts x.instance_of? Numeric        # -> false
# 是否子类的实例: is_a
puts x.is_a? Fixnum                # -> true
puts x.is_a? Integer               # -> true
puts x.is_a? Numeric               # -> true
puts x.is_a? Comparable            # -> true
puts x.is_a? Object                # -> true
puts x.is_a? String                # -> false
# 类定义了 === 操作符，可以替换 is_a? 方法
puts Numeric === x                 # -> true
