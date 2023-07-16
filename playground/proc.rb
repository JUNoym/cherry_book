# Procクラスはブロックをオブジェクト化したものです。
# Hello!という文字列を返すProcオブジェクトを作成する

hello_proc = Proc.new do
  "Hello!"
end

puts hello_proc.call

# 実行時に引数を渡すこともできる

culc_proc = Proc.new do |a, b|
  {
    add: a + b,
    sub: a - b,
    div: a / b,
    mul: a * b
  }
end
puts culc_proc.call(100, 200)
result = culc_proc.call(100, 200).map do |key, value|
  value
end
puts result


# def make_counter
#   count = 0
#   Proc.new do 
#     count += 1
#   end
# end

# counter = make_counter
# puts counter.call
# puts counter.call
