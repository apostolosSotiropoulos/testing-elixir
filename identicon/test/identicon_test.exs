defmodule IdenticonTest do
  use ExUnit.Case
  doctest Identicon

  test "creates a symmetric list of tiles" do
    identicon = Identicon.create
    [first, second, _, fourth, fifth] = identicon
    assert first == fifth
    assert second == fourth
  end
end
