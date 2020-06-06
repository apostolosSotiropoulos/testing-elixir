defmodule ArithmeticUtils do
  def digital_root(n) when n < 10, do: n
  def digital_root(n) do
    n
    |> Integer.digits
    |> Enum.sum
    |> digital_root
  end

  def set_of_multiples(n, limit, set, current_multiplier) when n * current_multiplier >= limit, do: set
  def set_of_multiples(n, limit, set \\ MapSet.new(), current_multiplier \\ 0) do
    multiplier = current_multiplier + 1
    set
    |> (fn s -> if n * multiplier >= limit, do: s, else: MapSet.put(s, n * multiplier) end).()
    |> (&set_of_multiples(n, limit, &1, multiplier)).()
  end
end

IO.inspect ArithmeticUtils.set_of_multiples(3, 1)  #MapSet<[]
IO.inspect ArithmeticUtils.set_of_multiples(3, 10) #MapSet<[3, 6, 9]>
