#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: module.rb
#         Desc:
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage:
#      Version: 0.0.1
#   LastChange: 2014-02-24 01:54:58
#      History:
#=============================================================================

module MyModule
  Name = 'MyModule'
  class MyClass
    Name = 'MyClass'
    def test
      'test'
    end
  end
end

m = MyModule::MyClass.new
puts m.test                  # -> 'test'
puts MyModule::Name          # -> 'MyModule'
puts MyModule::MyClass::Name # -> 'MyClass'
