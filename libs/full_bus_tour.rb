class FullBusTour
  attr_accessor :answer
  
  def initialize(group_sizes, full_cap)
    @group_sizes = group_sizes
    @full_cap = full_cap
  end

  def sum_array(start, ending)
    solution = if start == ending
      @group_sizes[start]
    else
      @group_sizes[start] + sum_array(start, ending - 1)
    end

    if solution == @full_cap
      @answer = solution
    end

    solution
  end
  

  def fits_exactly(length = @group_sizes.length, c = @full_cap)
    last_index = @group_sizes.size - 1
    for i in 0..last_index
      sum_array(i, last_index)
    end

    puts "@group_sizes: #{@group_sizes}"
    puts "@answer: #{@answer}"
    !@answer.nil?
  end
end
