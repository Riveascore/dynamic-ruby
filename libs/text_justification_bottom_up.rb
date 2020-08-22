class TextJustificationBottomUp
  def initialize(string, max_length)
    @string = string
    @max_length = max_length
    self.create_map
    @formatted = Array.new(@map.size, nil)
  end

  def create_map
    @map = @string.split(" ")
  end
  

  def count_char(from, to)
    char_count = 0

    for i in from..(to-1)
      char_count += @map[i].size
      char_count += 1 if i < (to-1)
    end

    char_count
  end

  def ugliness(input_length)
    if input_length > @max_length
      Float::INFINITY
    else
      (@max_length - input_length) ** 2
    end
  end

  def format(n)
    end_val = @map.size

    if n == end_val
      return 0
    end

    found_value = @formatted[n]
    if !found_value.nil?
      return found_value
    end

    min_score = Float::INFINITY
    for i in (n + 1)..end_val
      count_val = count_char(n, i)
      ug = ugliness(count_val)
      formatted = format(i)
      @formatted[i] = formatted

      score = ug + formatted

      min_score = [
        min_score,
        score
      ].min
    end

    min_score
    @formatted[n] = min_score

    min_score
  end
  
  
end
