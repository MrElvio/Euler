defmodule Multiples do
  @doc """
   If we list all the natural numbers below 10 that are multiples of 3 or 5, we
    get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.

  Examples

    iex> Multiples.sum_mult_3_5(1000)
    234168

  """
  @spec sum_mult_3_5(any) ::integer()
  def sum_mult_3_5(n) do
    if n == 0 do
      0
    else
      if rem(n, 3) == 0 || rem(n, 5) == 0 do
        n + sum_mult_3_5(n - 1)
      else
        sum_mult_3_5(n - 1)
      end
    end
  end
end
