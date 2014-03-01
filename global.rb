#!/usr/bin/env ruby -w
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: global.rb
#         Desc: 
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage: 
#      Version: 0.0.1
#   LastChange: 2014-03-02 01:46:57
#      History:
#=============================================================================

ROW_SIZE = 80

def line(str = '- ')
  puts str * (ROW_SIZE / str.length)
end
