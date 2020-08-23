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


  def combinationUtil(arr, data, start, end_val, index, r) 
    if (index == r) 
      j = 0
      return_array = []
      while j < r do
        return_array.push(data[j])
        j += 1
      end
      val = return_array.sum
      is_correct(val)
    end

    i = start
    while i <= end_val && end_val - i + 1 >= r - index do
      data[index] = arr[i]
      combinationUtil(arr, data, i + 1, end_val, index + 1, r)
      i += 1
    end
  end

  def printCombination(arr, n, r) 
    data = Array.new(r)
    combinationUtil(arr, data, 0, n-1, 0, r)
  end

  def main
    n = @group_sizes.size

    for r in 1..n
      printCombination(@group_sizes, n, r)
    end

  end

  def fits_exactly(length = @group_sizes.length, c = @full_cap)
    main
    !@answer.nil?
  end
end
