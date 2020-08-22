require_relative "../libs/text_justification.rb"
require "test/unit"
require "minitest/autorun"

class TextJustificationTest < Minitest::Test
  def setup
    
  end
  
  def test_1
    string = "Isabel sat on the step"
    max_length = 10
    answer = 36

    just = TextJustification.new(string, max_length)
    found_solution = just.format(0)

    assert_equal(answer, found_solution)
  end
  
  # def test_2
    
  # end

  # def test_3
    
  # end
end
