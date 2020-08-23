class FullBusTour
  attr_accessor :answer
  
  def initialize(group_sizes, full_cap)
    @group_sizes = group_sizes
    @last_index = @group_sizes.size - 1
    @full_cap = full_cap
  end

  # def sum_array(start, ending)
  #   value_at_start = @group_sizes[start]
  #   if value_at_start == @full_cap
  #     @answer = value_at_start
  #   end
    
  #   solution = if start == ending
  #     value_at_start
  #   else
  #     value_at_start + sum_array(start, ending - 1)
  #   end

  #   if solution == @full_cap
  #     @answer = solution
  #   end

  #   solution
  # end

  def check_all_nodes
    for i in 0..(@last_index)
      tree_sum(i)
    end
  end

  def tree_sum(n)
    solo = @group_sizes[n]
    is_correct(solo)
    total = solo

    for i in (n + 1)..(@last_index)
      t_sum = tree_sum(i)
      answer = solo + t_sum
      is_correct(t_sum)
      # is_correct(t_sum + solo)
      total += t_sum
    end

    total
  end

  def is_correct(val)
    if val == @full_cap
      @answer = val
    end
  end


  def combinationUtil(arr, data, start, end_val, index, r) 
    if (index == r) 
      val = data.sum
      is_correct(val)
      # for (j = 0; j < r; j++) 
      #   cout << data[j] << " " 
      #   cout << endl 
      #   return 
      # end
    end

    i = start
    while i <= end_val && end_val - i + 1 >= r - index do
    # for (i = start; i <= end_val && end_val - i + 1 >= r - index; i++) 
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
    # r = 3
    n = @group_sizes.size

    for r in 0..n
      printCombination(@group_sizes, n, r)
    end

  end


  
  
  
  

  def fits_exactly(length = @group_sizes.length, c = @full_cap)
    # last_index = @group_sizes.size - 1
    # for i in 0..last_index
    #   sum_array(i, last_index)
    # end

    # puts "@group_sizes: #{@group_sizes}"
    # puts "@answer: #{@answer}"
    # check_all_nodes
    main
    !@answer.nil?
  end
end
