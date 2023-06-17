module Tag
  def price_tag
    "#{self.price}円"
    # 上記のコードはpriceメソッドを呼び出しているが、これはこのモジュールをincludeしているクラスに
    # priceメソッドが定義されていることを前提としている
  end
end

class Product
  include Tag
  def price
    return 1000
  end
end

product = Product.new
puts product.price_tag
