require './player'
require './question'

class Game

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @questionNumber = 0
  end

  def game_loop
    while (player1.game_lives > 0 && player2.game_lives > 0)

    end
    puts "Good bye!"
  end

end