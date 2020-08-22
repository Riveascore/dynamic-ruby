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

  def format(i)
    
  end
  
  
end
