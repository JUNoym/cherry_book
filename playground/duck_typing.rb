class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end

end

class Product
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class NoName
end

def display_name(instance)
  if instance.respond_to?(:name)
    puts instance.name
  else
    puts "No name"
  end
end



instance = User.new("Oyama")
puts display_name(instance)

instance2 = Product.new("冷蔵庫")
puts display_name(instance2)

instance3 = NoName.new
puts display_name(instance3)



# 上記はUserクラスとProductクラスから作られたオブジェクトがそれぞれあるが
# オブジェクトのクラスがそれぞれなんであろうと、そのメソッドを呼び出すことができれば、それでおっけい！
# みたいなスタイルで書かれている
# これをダックタイピングという
