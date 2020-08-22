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
      count += @map[i].size
      count += 1 if i < to
    end
  end

  def ugliness
    
  end

  def format(i)
    
  end
  
  
end
