# sum_is_correct
# check_full_array
# keep_going
# combination_helper
# find_all_combinations
# combinations_of_all_sizes

class FullBusTour
  attr_accessor :answer
  
  def initialize(group_sizes, full_cap)
    @group_sizes = group_sizes
    @last_index = @group_sizes.size - 1
    @full_cap = full_cap
  end

  def sum_is_correct(val)
    if val == @full_cap
      @answer = val
    end
  end

  def check_full_array(data, r)
    j = 0
    return_array = []
    while j < r do
      return_array.push(data[j])
      j += 1
    end
    val = return_array.sum
    sum_is_correct(val)
  end

  def keep_going(i, end_val, r, index)
    i <= end_val && end_val - i + 1 >= r - index
  end
  
  def check_combo(used, array)
    final_array = []
    
    used.each.with_index do |is_used, index|
      if is_used
        final_array.push(array[index])
      end
    end

    sum_is_correct(final_array.sum)
  end
  
=begin
  4 cases

    current_length == combo_size
      found a match

    start > array size
    out of bounds, return

    use current element
      combos (start + 1, length + 1)

    don't use current element
      combos(start + 1, length)
=end
  def combinations(array, combo_size, start, current_length, used)
    if current_length == combo_size
      check_combo(used, array)
      return
    end

    if start == array.size
      return
    end

    # 2 cases, 

    # use current element, 
      # used[start] = true
      # current length increases
      # get combinations starting at next index
    used[start] = true
    combinations(array, combo_size, start + 1, current_length + 1, used)

    # don't use current element
      # used[start] = false
      # using same length
      # get combinations starting at next
    used[start] = false
    combinations(array, combo_size, start + 1, current_length, used)
  end

  def combinations_of_size(array, combo_size)
    used = Array.new(array.size)
    start = 0
    current_length = 0
    combinations(array, combo_size, start, current_length, used)
  end
  

  def combinations_of_every_size(array)
    for combo_size in 0..(array.size - 1)
      combinations_of_size(array, combo_size)
    end
  end
  
  
  
  
  

  def combination_helper(arr, data, start, end_val, index, r) 
    if (index == r) 
      check_full_array(data, r)
      return
    end

    i = start
    while keep_going(i, end_val, r, index) do
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
    # combinations_of_all_sizes
    combinations_of_every_size(@group_sizes)
    !@answer.nil?
  end
end
