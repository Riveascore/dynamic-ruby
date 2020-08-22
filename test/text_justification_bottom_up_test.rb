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
end
