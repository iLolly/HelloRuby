Ruby Note
=========

## 关键字 ##

### 关键字 ###
| Keywords         | Info |
|------------------|------|
| \_\_LINE\_\_     |      |
| \_\_ENCODING\_\_ |      |
| \_\_END\_\_      |      |
| \_\_FILE\_\_     |      |
| =begin           |      |
| =end             |      |
| BEGIN            |      |
| END              |      |
| alias            |      |
| and              |      |
| begin            |      |
| case             |      |
| class            |      |
| def              |      |
| defined?         |      |
| do               |      |
| else             |      |
| elsif            |      |
| end              |      |
| ensure           |      |
| false            |      |
| for              |      |
| if               |      |
| in               |      |
| module           |      |
| next             |      |
| nil              |      |
| not              |      |
| or               |      |
| redo             |      |
| rescue           |      |
| retry            |      |
| return           |      |
| self             |      |
| super            |      |
| then             |      |
| true             |      |
| undef            |      |
| unless           |      |
| until            |      |
| when             |      |
| while            |      |
| yield            |      |

### 语句中的关键字 ###
| Keywords         | Info |
|------------------|------|
| at_exit          |      |
| attr             |      |
| attr_accessor    |      |
| attr_reader      |      |
| attr_writer      |      |
| catch            |      |
| include          |      |
| lambda           |      |
| load             |      |
| loop             |      |
| private          |      |
| proc             |      |
| protected        |      |
| public           |      |
| raise            |      |
| require          |      |
| throw            |      |

### 杂项 ###
> 常量以大写字母开头  
> 给变量初始化为 nil 是一个好习惯。  
> 可变长参数前缀 * 号，可变长参数的实质是一个 Array  

### 名字的用法 ###
> 名字前面的第一个字符表明这个名字的用法。  
> 局部变量、方法参数和方法名称应该用一个小写字母开头或者用一个下划线开头；  
> 全局变量用美元符作为前缀“$”；  
> 实例变量用“@”开头；  
> 类变量用“@@”开头；  
> 类名、模块名和常量应该用大写字母开头。  

### 变量的命名规则 ###
> 以小写字母或下划线开头，变量中只能包含字母，数字和下划线。  
> 关键字不能作为变量名使用。  
> 当ruby解释器读到一个单词的时候，他会把他解释成变量名，方法名或者保留关键字中的一种。  
> 如果单词的后面跟一个“=”，说明是一个变量；如果是一个关键字，那就只能作为关键字使用；其他情况视为方法名。  

### 方法调用 ###
```ruby
  x = "100".to_i
```
> “.”的意思是方法to_i被字符串“100”调用。  
> 字符串“100”是方法的调用者。  
> “.”前面的对象和后面的方法是调用和被调用的关系。  

