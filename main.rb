require './player.rb'
require './question.rb'
require './game.rb'

player1 = Player.new("Janay")
player2 = Player.new("Jonah")

puts player1.name, player2.name

q  = Question.new

puts q.statement

game = Game.new(player1, player2)

puts game.current_player.name
game.turn

