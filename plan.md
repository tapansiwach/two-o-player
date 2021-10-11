Entities:
- Player
  - has game_lives, starting value is 3
  - can decrement game_lives
- Question
  - has two numbers, number 1 & number 2; these numbers are random chosen from 1..20
  - can ask the addition problem (to a player)
  - has a correct answer
  - can check if the question is solved? ; in other words, if a provided answer matches the correct answer
- Game
  - has two players; player1 & player2
  - can define whose turn it is (has a game loop)
  - can generate a question
  - can receiving input from a player