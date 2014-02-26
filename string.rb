#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

#=============================================================================
#     FileName: string.rb
#         Desc:
#       Author: Lolly
#        Email: cclolly@gmail.com
#     HomePage:
#      Version: 0.0.1
#   LastChange: 2014-02-27 01:18:54
#      History:
#=============================================================================

html = ''
html << '<h1>Page Title</h1>'
puts html

puts '* * *'

# << 内插值
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

puts '* * *'

lines = <<LOLLY
多行字符串尽量使用 Heredoc 格式
简单直接
LOLLY
puts lines

lines = <<'中文的内容 还有空格'
似乎
这个有点疯狂了。。
中文的内容 还有空格
puts lines

lines = <<-'# # #' # 注释
<html>
  <head>
    <title>Title</title>
  </head>
</html>
            # # #
puts lines

puts '* * *'

puts "%d %s's %s" % [3, 'Lolly', 'Ruby']

puts '* * *'

puts 'abc' \
     'def'

puts '* * *'

$hi = 'hi'
puts "#$hi Ruby!"
puts "#{$hi}Ruby!"
puts "\#{$hi}Ruby!"

puts "\u00D7"
puts "\u{A5}"
puts "\u{A3 20 A5}"

puts '* * *'

puts %q{Don't worry}
puts %q{Don't {worry}}
puts %Q|"hi"|
puts %-abc-
puts %Q!hello!.class # -> String

puts '* * *'

#puts `ls -lla` # 操作系统命令
#puts %x(ls)    # 泛型化
windows = nil
if windows
  listcmd = 'dir'
else
  listcmd = 'ls'
end
#listing = `#{listcmd}`
#listing = Kernel.`(listcmd)
#puts listing

puts '* * *'

10.times { puts 'test'.object_id }

puts '* * *'

# 字符串面量
puts ?A
puts ?"
puts ??

puts '- ' * 30

text = 'Lolly'
puts text.object_id
text << ' Z'
puts text.object_id
text << 74
puts text.object_id
puts text

puts '* * *'

# 访问字符串和子字符串

s = 'hello'
puts s[0]            # -> h
puts s[s.length - 1] # -> o
puts s[-1]           # -> o
puts s[-2]           # -> l
puts s[-s.length]    # -> h
puts s[s.length]     # -> nil # 超过索引

s[1] = ?a
puts s               # -> hallo
