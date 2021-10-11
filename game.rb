require './player'
require './question'

class Game

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @questionNumber = 0
  end

  def loop
    while (@player1.game_lives > 0 && @player2.game_lives > 0)
      # check whose turn is it
      player = @questionNumber % 2 == 0 ? @player1 : @player2

      # ask a question to player
      question = Question.new
      print "Player"
      print player == @player1 ? " 1: " : " 2: "
      puts question.pose
      @questionNumber += 1

      # get user's answer and check if it is correct
      # if answer is incorrect, decrement player's game_lives
      userAnswer = gets.chomp.to_i
      if userAnswer == question.answer
        puts "YES! You are correct"
      else
        puts "Seriously? No!"
        player.decrement_game_lives
      end

      # display remaining lives of players
      puts "P1: #{@player1.game_lives}/3 vs. P2: #{@player2.game_lives}/3"
    end
    puts "Good bye!"
  end

end