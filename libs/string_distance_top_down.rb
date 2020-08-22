require 'pry'
require 'pry-remote'

class StringDistanceTopDown
  attr_accessor :answer, :solutions
  
  def initialize(string_1, string_2)
    @string_1 = string_1
    @string_2 = string_2

    idx_1 = @string_1.size
    idx_2 = @string_2.size

    @solutions = (0..(idx_2)).map do |idx_1_val|
      Array.new(idx_1 + 1, nil)
    end
    
  end
  
  def get_answer
    @answer = distance(@string_1.size, @string_2.size)
  end
  

  def distance(idx_1, idx_2)
    min_val = if idx_1 == 0
      idx_2
    elsif idx_2 == 0
      idx_1
    else
      found_solution = @solutions[idx_2][idx_1]
      if !found_solution.nil?
        return found_solution
      end

      [
        delete(idx_1, idx_2),
        insert(idx_1, idx_2),
        replace(idx_1, idx_2)
      ].min
    end

    @solutions[idx_2][idx_1] = min_val

    min_val
  end
  
  
  def delete(idx_1, idx_2)
    1 + distance(idx_1 - 1, idx_2)
  end

  def insert(idx_1, idx_2)
    1 + distance(idx_1, idx_2 - 1)
  end

  def replace(idx_1, idx_2)
    operation_count = if @string_1[idx_1 - 1] == @string_2[idx_2 - 1]
      0
    else
      1
    end

    operation_count + distance(idx_1 - 1, idx_2 - 1)
  end
  
end
