def greet
    puts "Hello"
    if block_given?
        text = yield '引数を渡す'
        puts text
    end
    puts "Hello2"
end
# メソッドの途中で処理を追加したい時に使うのか？
# Rubyのブロックはコードの塊を他のメソッドに渡すことができる機能


greet

greet do
    puts "Hi" 
end

greet do |text|
    text * 200
end