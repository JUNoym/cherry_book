puts ["apple", "banana", "cherry"].map {|fruit| fruit.upcase}
# もっと簡単に書くことができる
puts ["apple", "banana", "cherry"].map(&:reverse)
