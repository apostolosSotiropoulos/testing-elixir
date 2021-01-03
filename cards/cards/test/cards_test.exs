# we can run tests by 
# mix test test/cards_test.exs

defmodule CardsTest do
  use ExUnit.Case

  test "greets the world" do
    assert Cards.say_hi == :hi
  end
end
