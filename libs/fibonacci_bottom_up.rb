class FibonacciBottomUp
  attr_accessor :answer
  
  def initialize(num)
    @num = num
    @solved = Array.new(num, nil)
    @answer = self.fib(num)
  end

  def fib(n)
    found_solution = @solved[n]
    if !found_solution.nil?
      return found_solution
    end
    
    
    found_solution = if n == 0
      0
    elsif n == 1
      1
    else
      fib(n-1) + fib(n-2)
    end

    @solved[n] = found_solution

    found_solution
  end
  
end
