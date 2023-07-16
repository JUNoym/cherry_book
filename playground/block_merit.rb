def greet_jp(&block)
  texts = ["おはよう", "こんにちは", "こんばんは"]
  greet_common(texts, &block)
end

def greet_en(&block)
  texts = ["good morning", "hello", "good evening"]
  greet_common(texts, &block)
end

def greet_common(texts, &block)
  puts texts[0]
  puts block.call(texts[1])
  puts texts[2]
end

greet_jp do |text|
  text * 2
end

greet_en do |text|
  text.upcase
end


# ブロックを引数とするメリットは、ブロックを他のメソッドに引き渡すことができるという点
# もう一つのメリットは渡されたブロックに対して、メソッドを呼び出し、必要な情報を取得したりブロックに対する何かしらの操作を実行できるようになる
