def greet
  puts "おはよう"
  if block_given?
    result = yield "これは引数です"
    puts result
  end
  puts "こんばんは"
end

greet do |arg|
  puts arg * 2
end
