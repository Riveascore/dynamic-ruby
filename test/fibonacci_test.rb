require_relative "../libs/fibonacci.rb"
require "test/unit"
require "minitest/autorun"

class FibonacciTest < Minitest::Test
  def setup
    
  end
  
  def test_0
    num = 0
    fib = Fibonacci.new(num)
    answer = 0

    assert_equal(answer, fib.answer)
  end
  
  def test_1
    num = 1
    fib = Fibonacci.new(num)
    answer = 1

    assert_equal(answer, fib.answer)
  end

  def test_2
    num = 2
    fib = Fibonacci.new(num)
    answer = 1

    assert_equal(answer, fib.answer)
  end

  def test_3
    num = 3
    fib = Fibonacci.new(num)
    answer = 2

    assert_equal(answer, fib.answer)
  end

  def test_7
    num = 7
    fib = Fibonacci.new(num)
    answer = 13

    assert_equal(answer, fib.answer)
  end

  # def test_30
  #   num = 30
  #   fib = Fibonacci.new(num)
  #   answer = 832040

  #   assert_equal(answer, fib.answer)
  # end
end
