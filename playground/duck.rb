module Duckable
  def duck
    puts display("Duckableがincludeされる先でdisplayが使えることを前提としている")
  end
end

class User
  attr_accessor :name
  include Duckable
  def initialize(name)
    @name = name
  end

  def display(text)
    puts "#{text}"
  end
end

class Product
  attr_accessor :product_name
  def initialize(product_name)
    @product_name = product_name
  end

  def display(text)
    puts "#{text}です"
  end
end

user = User.new("大山")
user.duck()


