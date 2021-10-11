class Player
  attr_reader :game_lives

  def initialize
    @game_lives = 3
  end

  def decrement_game_lives
    @game_lives -= 1
  end

end