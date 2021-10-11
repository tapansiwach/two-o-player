class Question

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def pose
    puts "What does #{@number1} plus #{@number2} equal?"
  end

  def answer
    return @number1 + @number2
  end

  def solved?(answer)
    return self.answer == answer
  end

end