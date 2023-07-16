def greet(&block)
  puts "おはよう！"
  puts block.class
  text = block.call("blockの引数!!!!!!!!")
  puts text
  puts "こんばんは！"
end

greet do |text|
  puts text * 2
end


