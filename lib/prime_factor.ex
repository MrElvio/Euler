defmodule PrimeFactor do
  @doc """
    The prime factors of 13195 are 5, 7, 13 and 29.

    What is the largest prime factor of the number 600851475143 ?

    Examples

      iex> PrimeFactor.process(600851475143)
      6857
    """

  @spec process(any) :: integer()
  def process(n) do
    Stream.iterate(0, &(&1 + 1))
    |> Stream.filter(&prime?/1)
    |> Stream.take_while(&(&1 < round(:math.sqrt(n))))
    |> Enum.filter(&(rem(n, &1) == 0))
    |> List.last()
  end

  def prime?(n) do
    Enum.all?(2..round(:math.sqrt(n)), fn x ->
      rem(n, x) != 0
    end)
  end
end
