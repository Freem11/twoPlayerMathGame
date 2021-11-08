class Question

  attr_accessor :num1, :num2, :answer

  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    @answer = num1 + num2
  end

  def checkAnswer(input)
    @answer == input
  end


  end