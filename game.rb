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
      # check whose turn is it
      player = @questionNumber % 2 == 0 ? player1 : player2

      # ask a question to player
      question = Question.new
      print "Player"
      print player == player1 ? " 1: " : " 2: "
      puts question.pose
    end
    puts "Good bye!"
  end

end