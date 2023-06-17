module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  extend Loggable

  def self.create_products(names)
    log "create_products is called(特異メソッドが呼び出された)"
  end

end

Product.create_products([])

Product.log("as[dpofkj]")

