require_relative "../libs/text_justification_bottom_up.rb"
require "test/unit"
require "minitest/autorun"

class TextJustificationBottomUpTest < Minitest::Test
  def setup
    
  end
  
  def test_1
    string = "Isabel sat on the step"
    max_length = 10
    answer = 36

    just = TextJustificationBottomUp.new(string, max_length)
    found_solution = just.format(0)

    assert_equal(answer, found_solution)
  end

  def test_2
    string = "The actual Enumeration shall be made within three Years after the first Meeting of the Congress of the United States, and within every subsequent Term of ten Years, in such Manner as they shall by Law direct. The Number of Representatives shall not exceed one for every thirty Thousand, but each State shall have at Least one Representative; and until such enumeration shall be made, the State of New Hampshire shall be entitled to chuse three, Massachusetts eight, Rhode-Island and Providence Plantations one, Connecticut five, New-York six, New Jersey four, Pennsylvania eight, Delaware one, Maryland six, Virginia ten, North Carolina five, South Carolina five, and Georgia three."
    max_length = 67
    answer = 409

    just = TextJustificationBottomUp.new(string, max_length)
    found_solution = just.format(0)

    assert_equal(answer, found_solution)
  end
end
