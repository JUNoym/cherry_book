module Logable
  def log(text)
    puts "これはログを出力するmoduleです。渡された引数は#{text}です。"
  end
end

class User
  include Logable
  def name
    puts "Junya"
    log("nameメソッドを実行")
  end
end

user = User.new()
user.name


class Product
  include Logable
  def title
    puts "めっちゃいい映画"
    log("titleメソッドを実行")
  end
end

product = Product.new()
product.title

