defmodule ArithmeticUtils do
  def digital_root(n) when n < 10, do: n
  def digital_root(n) do
    n
    |> Integer.digits
    |> Enum.sum
    |> digital_root
  end

  def set_of_multiples(n, limit, set \\ MapSet.new()) do
    set
    |> MapSet.put(n)
    |> MapSet.put(limit)
  end
end

IO.puts Enum.sum ArithmeticUtils.set_of_multiples 1, 2