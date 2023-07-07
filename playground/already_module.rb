module Baseball
end

class Baseball::Second
  attr_accessor :player, :uniform_number
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

player = Baseball::Second.new("Alice", 13)
p player.player
p player.uniform_number
