require './player'

class Game

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @questionNumber = 0
  end

end