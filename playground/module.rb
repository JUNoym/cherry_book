module Loggable
  # private
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable
  def title
    log "title is called"
    "A great movie"
  end

  # private
  #   def log(text)
  #     puts "[LOG] #{text}"
  #   end
end

class User
  include Loggable
  def name
    log "name is called"
    "Junya"
  end

  # private
  #   def log(text)
  #     puts "[LOG] #{text}"
  #   end
end

p = Product.new
puts p.title

u = User.new
puts u.name
# モジュールをクラスにincludeして機能を追加することをミックスインという

u.log "Hello"
