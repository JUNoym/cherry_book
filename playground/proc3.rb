# # procオブジェクトを普通の引数として渡す
# def greet(arrange_proc)
#   puts "おはよう！"
#   text = arrange_proc.call("こんにちは")
#   puts text
#   puts "こんばんは！"
# end

# tenTimesCallsMethods = Proc.new { |text| text * 10 }
# greet(tenTimesCallsMethods)

# メソッドに渡すことができるブロックの数は１つだけだけど、Procオブジェクトを使えば複数のブロックを引数として渡すことができる
def greet(proc1, proc2, proc3)
  puts proc1.call("おはよう")
  puts proc2.call("こんにちは")
  puts proc3.call("こんばんは")
end

shuffleProc = Proc.new { |text| text.chars.shuffle.join}
repeatProc = Proc.new { |text| text * 2}
questionProc = Proc.new { |text| "#{text}?"}

greet(shuffleProc, repeatProc, questionProc)
