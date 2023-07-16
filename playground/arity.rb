def greet(&block)
  puts "おはよう"
  text =
    if block.arity == 1
      yield "こんにちは"
    elsif block.arity == 2
      yield "hello", "everyone"
    end
  puts text
  puts "こんばんは"
end

greet do |text|
  text * 2
end

greet do |text1, text2|
  text1 * 2 + text2 * 2
end
