require_relative "../libs/string_distance.rb"
require "test/unit"
require "minitest/autorun"

class StringDistanceTest < Minitest::Test
  def setup
    
  end
  
  def test_1
    string_1 = "benyam"
    string_2 = "ephrem"
    answer = 5
    sd = StringDistance.new(string_1, string_2)

    assert_equal(answer, sd.answer)
  end
  
  def test_2
    string_1 = "Saturday"
    string_2 = "Sundays"
    answer = 4
    sd = StringDistance.new(string_1, string_2)

    assert_equal(answer, sd.answer)
  end

  def test_3
    string_1 = "brabble"
    string_2 = "rickandmortyissickkkkk"
    answer = 21
    sd = StringDistance.new(string_1, string_2)

    assert_equal(answer, sd.answer)
  end
end
