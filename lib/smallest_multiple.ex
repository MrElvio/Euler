defmodule SmallestMultiples do
  @doc """
  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

  Examples

    iex> SmallestMultiples.process(20)
    232792560
  """
  @spec process(any) :: integer()
  def process(n) do
    Stream.iterate(n, &(&1 + n))
    |> Enum.find(fn x ->
      div_elements(1..n, x)
    end)
  end

  defp div_elements(list, x) do
    Enum.all?(list, fn n ->
      rem(x, n) == 0
    end)
  end
end
