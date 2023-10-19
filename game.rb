require './question.rb'

class Game
  attr_accessor :current_player
  attr_reader :question, :player2, :player1
  attr

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    
    @response = ""
    @answer = ""
  end

  def ask_question
    question = Question.new
    @answer = question.answer
    puts "#{@current_player.name}: #{question.statement}"
  end

  def receive_response
    @response = gets.chomp.to_i
  end

  def check_response
    if @response == @answer
      puts "YES! you are correct."
    else
      puts "Seriously? No!"
      @player1.lives -= 1
    end
  end

  def display_score
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def switch_player
    if @current_player.name == @player1.name
      @current_player = @player2
    else 
      @current_player = @player1
    end

  end
   
    
end