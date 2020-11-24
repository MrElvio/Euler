defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  describe "Fibonacci role" do
    test "should return 0 as first Fibonacci number" do
      n = 0;
      assert 0 == Fibonacci.fib_cal(n)
    end

    test "should return 1 as second Fibonacci number" do
      n = 1;
      assert 1 == Fibonacci.fib_cal(n)
    end

    test "should return 8 on fifth Fibonacci number" do
      n = 6;
      assert 8 == Fibonacci.fib_cal(n)
    end
  end

  describe "Find the sum of the even-valued terms" do
    test "should return 4613732 when fibonacci sequence whose values do not exceed 4_000_000" do
      n = 4000000;
      assert 4613732 == Fibonacci.process(n)
    end
  end
end
