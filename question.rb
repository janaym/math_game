class Question

  attr_reader :answer, :statement

  def initialize
    a = rand(1...20)
    b = rand(1...20)
    @statement = "What is #{a} plus #{b} equal?"
    @answer = a + b
  end


end