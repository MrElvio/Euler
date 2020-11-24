defmodule MultiplesTest do
  use ExUnit.Case
  doctest Multiples

  describe "Multiples for 3 or 5" do
    test "Should return 0 when inicial number is > 3 " do
      n = 2;
      assert 0 == Multiples.sum_mult_3_5(n);
    end

    test "should return 23 when all the natural numbers below 10" do
      n = 9;
      assert 23 == Multiples.sum_mult_3_5(n);
    end
  end
end
