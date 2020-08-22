require_relative "../libs/string_distance.rb"
require_relative "../libs/string_distance_top_down.rb"
require "test/unit"
require "minitest/autorun"

class StringDistanceTest < Minitest::Test
  def setup
    # @class_to_use = StringDistance
    @class_to_use = StringDistanceTopDown
  end
  
  def test_1
    string_1 = "benyam"
    string_2 = "ephrem"
    answer = 5
    sd = @class_to_use.new(string_1, string_2)
    sd.get_answer
    puts "solutions: #{sd.solutions}"

    assert_equal(answer, sd.answer)
  end
  
  def test_2
    string_1 = "Saturday"
    string_2 = "Sundays"
    answer = 4
    sd = @class_to_use.new(string_1, string_2)
    sd.get_answer

    assert_equal(answer, sd.answer)
  end

  def test_3
    string_1 = "brabble"
    string_2 = "rickandmortyissickkkkk"
    answer = 21
    sd = @class_to_use.new(string_1, string_2)
    # sd.get_answer

    assert_equal(answer, sd.answer)
  end
end
