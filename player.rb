#Player class will store: player name, scores
class Player
  attr_reader :name, :lives

  def initialize(name, lives = 3)
    @name = name
    @lives = lives

  end

  def reduce_lives
    @lives -= 1
  end

end
