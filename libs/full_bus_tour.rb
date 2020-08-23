class FullBusTour
  attr_accessor :answer
  
  def initialize(group_sizes, full_cap)
    @group_sizes = group_sizes
    @last_index = @group_sizes.size - 1
    @full_cap = full_cap
  end

  def is_correct(val)
    if val == @full_cap
      @answer = val
    end
  end


  def combination_helper(arr, data, start, end_val, index, r) 
    if (index == r) 
      j = 0
      return_array = []
      while j < r do
        return_array.push(data[j])
        j += 1
      end
      val = return_array.sum
      is_correct(val)
      return
    end

    i = start
    while i <= end_val && end_val - i + 1 >= r - index do
      data[index] = arr[i]
      combination_helper(arr, data, i + 1, end_val, index + 1, r)
      i += 1
    end
  end

  def find_all_combinations(arr, n, r) 
    data = Array.new(r)
    combination_helper(arr, data, 0, n-1, 0, r)
  end

  def combinations_of_all_sizes
    n = @group_sizes.size

    for r in 1..n
      find_all_combinations(@group_sizes, n, r)
    end

  end

  def fits_exactly(length = @group_sizes.length, c = @full_cap)
    combinations_of_all_sizes
    !@answer.nil?
  end
end
