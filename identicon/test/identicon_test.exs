defmodule IdenticonTest do
  use ExUnit.Case
  doctest Identicon

  test "creates a symmetric list of tiles" do
    assert_list_with_symetric_lists_as_elements Identicon.create
  end

  test "creates a uniq list of tiles every time" do
    assert 2 == Enum.uniq([Identicon.create, Identicon.create]) |> Enum.count
  end

  defp assert_list_with_symetric_lists_as_elements([]) do; end

  defp assert_list_with_symetric_lists_as_elements([head | tail]) do
    assert_symetric_list head
    assert_list_with_symetric_lists_as_elements tail
  end

  defp assert_symetric_list([first, second, _, fourth, fifth]) do
    assert first == fifth
    assert second == fourth
  end
end
