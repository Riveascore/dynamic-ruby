class FullBusTour
  def initialize(group_sizes, full_cap)
    @group_sizes = group_sizes
    @full_cap = full_cap
  end

  def fits_exactly(length = @group_sizes.length, c = @full_cap)
    false
  end
end
