require './question.rb'

class Game
  attr_accessor :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  # start a turn

  def turn
    puts "---- NEW TURN ----"

    question = Question.new
    puts "#{@current_player.name}: #{question.statement}"

    player_answer = gets.chomp

    if player_answer.to_i == question.answer
      puts 'YES! You are correct'
    else
      current_player.lives -= 1
      puts 'Seriously? No!'
    end

    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

  end





    
    
end