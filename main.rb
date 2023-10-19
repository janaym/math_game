require './player.rb'
require './question.rb'
require './game.rb'

player1 = Player.new("Janay")
player2 = Player.new("Jonah")

#  start game
game = Game.new(player1, player2)

while game.player1.lives > 0 && game.player2.lives > 0

  puts "---- NEW TURN ----"
  game.ask_question

  game.receive_response

  game.check_response

  game.display_score

  game.switch_player
end

puts "#{game.current_player.name} wins with a score of #{game.current_player.lives}/3"
puts "---- GAME OVER ----"
puts "Good Bye!"




