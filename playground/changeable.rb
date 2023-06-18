module NameChange
  def change_name
    @name = "大山純矢"
  end
end

class User
  include NameChange
  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

user = User.new("Oyama")
puts user.name

puts user.change_name
