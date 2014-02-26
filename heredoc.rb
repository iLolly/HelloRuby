#!/usr/bin/env ruby -w
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: heredoc.rb
#         Desc:
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage:
#      Version: 0.0.1
#   LastChange: 2014-02-27 00:56:48
#      History:
#=============================================================================


aa = <<LOLLY
long text
in here...
LOLLY
puts aa

puts

bb = <<'Long text here'
long text
in here...
Long text here
puts bb

puts

cc = <<-'###' # commit...
long text
in here...
         ###
puts cc
