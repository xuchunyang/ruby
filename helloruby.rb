# -*- coding: utf-8; -*-

# Hello World in Ruby
print("hello, world.\n")

# HELLO, WORLD! 是对象，print 是方法
print("HELLO, WORLD!\n")

# 单引号不会解析字符串中的 Escape
print('hello, world!\n')
printf("\n")

# print 方法可以同时接收多个字符串
print("hello,", " world.", "\n")

# Ruby 的方法调用可以不加括号
print "hello, world!\n"
print "hello,", " world!", "\n"

# puts 和 print 不同在于它会在结尾加一个换行
puts "Hello, Ruby!"

# puts 会在每一个参数结果都加一个空格
puts "Hello,", "Ruby!"

# p 方法输出对象的内容（包括其类型）
p 123                           #=> 123
p "123"                         #=> "123"

# p 方法也不会解析字符串中的 Escape 字符
p "123\n"                       #=> "123\n"

# 输出中文
print "使天下之人，不敢言而敢怒。\n"
