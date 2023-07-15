module Hoge
  def hoge
    puts "hogeモジュール(extend2.rb)"
  end
end

module HogeHoge
  def hogehoge
    puts "hogehogeモジュール(extend2.rb)"
  end
end

class Product
  extend Hoge
  include HogeHoge
end

Product.hoge
product = Product.new()
product.hogehoge()

