# string edit distance
# Levenshtein distance

# can be used for autocomplete

# similarity caculated by
# how many steps to convert one string to another

# delete letter
# add letter
# replace letter

class StringDistance
  attr_accessor :answer
  
  def initialize(string_1, string_2)
    @string_1 = string_1
    @string_2 = string_2

    idx_1 = @string_1.size - 1
    idx_2 = @string_2.size - 1
    @answer = distance(idx_1, idx_2)
  end

  def distance(idx_1, idx_2)
    if a == 0
      @string_2.size
    elsif b == 0
      @string_1.size
    else
      [
        delete(idx_1, idx_2),
        insert(idx_1, idx_2),
        replace(idx_1, idx_2)
      ].min
    end
  end
  
  
  def delete(idx_1, idx_2)
    1 + distance(idx_1, idx_2)
  end

  def insert(idx_1, idx_2)
    1 + distance(idx_1, idx_2 - 1)
  end

  def replace(idx_1, idx_2)
    operation_count = if @string_1[idx_1] == @string_2[idx_2]
      0
    else
      1
    end
    operation_count + distance(idx_1 - 1, idx_2 - 1)
  end
  
end
