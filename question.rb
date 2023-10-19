class question

  attr_reader :answer

  def initialize
    a = rand(1...20)
    b = rand(1...20)
    @question = "What is #{a} plus #{b} equal?"
    @answer = a + b
  end

  def ask_question
    puts @question
  end

end