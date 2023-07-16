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
