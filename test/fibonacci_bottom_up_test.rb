require_relative "../libs/fibonacci_bottom_up.rb"
require "test/unit"
require "minitest/autorun"

class FibonacciBottomUpTest < Minitest::Test
  def setup
    
  end
  
  def test_0
    num = 0
    fib = FibonacciBottomUp.new(num)
    answer = 0

    assert_equal(answer, fib.answer)
  end
  
  def test_1
    num = 1
    fib = FibonacciBottomUp.new(num)
    answer = 1

    assert_equal(answer, fib.answer)
  end

  def test_2
    num = 2
    fib = FibonacciBottomUp.new(num)
    answer = 1

    assert_equal(answer, fib.answer)
  end

  def test_3
    num = 3
    fib = FibonacciBottomUp.new(num)
    answer = 2

    assert_equal(answer, fib.answer)
  end

  def test_7
    num = 7
    fib = FibonacciBottomUp.new(num)
    answer = 13

    assert_equal(answer, fib.answer)
  end

  def test_30
    num = 30
    fib = FibonacciBottomUp.new(num)
    answer = 832040

    assert_equal(answer, fib.answer)
  end

  def test_36
    num = 36
    fib = FibonacciBottomUp.new(num)
    answer = 14930352

    assert_equal(answer, fib.answer)
  end

  def test_50
    num = 50
    fib = FibonacciBottomUp.new(num)
    answer = 12586269025

    assert_equal(answer, fib.answer)
  end
end
