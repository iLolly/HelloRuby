#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: string.rb
#         Desc:
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage:
#      Version: 0.0.1
#   LastChange: 2014-02-24 01:41:50
#      History:
#=============================================================================

html = ''
html << '<h1>Page Title</h1>'
puts html

puts '* * *'

# 操作较大的字符串时避免使用+, 如需修改被操作字符串, 应该总是使用<<作为代替
p = { p1: 'P1 text', p2: 'P2 text', p3: 'P3 text' }
p.each do |k, v|
  html << "\n<p>#{v}</p>"
end
puts html

puts '* * *'

string1 = "some injection\nusername"
string2 = "username"
puts string1[/^username$/] # 匹配行首行尾
puts string2[/\Ausername\Z/] # 匹配整个字符串

puts '* * *'

# ## 百分号表示法 ##
=begin
 %{String} 创建一个使用双引号括起来的字符串
%Q{String} 创建一个使用双引号括起来的字符串
%q{String} 创建一个使用单引号括起来的字符串
%r{String} 创建一个正则表达式字面值
%w{String} 将一个字符串以空白字符切分成一个字符串数组，进行较少替换
%W{String} 将一个字符串以空白字符切分成一个字符串数组，进行较多替换
%s{String} 生成一个符号对象
%x{String} 执行String所代表的命令
=end
username = 'Lolly'
# 使用 %() 的方式来定义需要字符串插值(string interpolation)以及包含"符号的单行字符串
puts %{"This is #{username}."}
puts %{<p class="style">#{username}</p>}
%r{^/blog/2014/(.*)$} # 使用%r的方式定义包含多个/符号的正则表达式
puts %w{lolly is here}

lines = <<LOLLY
多行字符串尽量使用 Heredoc 格式
简单直接
LOLLY
puts lines

puts '* * *'

puts "%d %s's %s" % [3, 'Lolly', 'Ruby']
