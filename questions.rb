#Game questions will be generated here and validate the answer
class Questions
  attr_reader :num1, :num2

  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def validate(answer)
    (num1 + num2) == answer
  end
end