class TextJustification
  def initialize(string, max_length)
    @string = string
    @max_length = max_length
    self.create_map
  end

  def create_map
    @map = string.split(" ")
  end
  

  def count_char(from, to)
    char_count = 0

    for i in from..to
      char_count += @map[i].size
      char_count += 1 if i < to
    end

    char_count
  end

  def ugliness
    
  end

  def format(n)
    end_val = @map.size - 1

    if n > end_val
      return 0
    end

    min_score = Float::INFINITY
    for i in n..end_val
      ug = ugliness(n, i)
      formatted = format(n + 1)
      score = ug + formatted

      min_score = [
        min_score,
        score
      ].min
    end

    min_score
  end
  
  
end
