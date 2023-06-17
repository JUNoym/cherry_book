junya = "OyamaJunya"
takashi = "TakashiOyama"

def junya.shuffle
  chars.shuffle.join
end

puts junya.shuffle
# puts takashi.shuffle これは実行することができない　shuffleメソッドはjunyaオブジェクトにしか定義されていないから
# junyaというオブジェクトに対してだけshuffleメソッドを定義している
# 上記のように特定のオブジェクトに対して紐づくメソッドを特異メソッド(singleton method)と呼ぶ

# 特異クラス
class User
end

def User.function
  puts "これは特異メソッド"
end

class << User
  def helloClassMethod
    puts "hello"
  end
end

puts User.function
puts User.helloClassMethod

