class Fibonacci
  attr_accessor :answer
  
  def initialize(num)
    @num = num
    @answer = self.fib(num)
  end

  def fib(n)
    if n == 0
      0
    elsif n == 1
      1
    else
      fib(n-1) + fib(n-2)
    end
  end
  
end
