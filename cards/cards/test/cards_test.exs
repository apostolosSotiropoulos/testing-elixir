# we can run tests by 
# mix test test/cards_test.exs

defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "greets the world" do
    assert Cards.say_hi == :hi
  end

  test "creates deck of 52 cards" do
    assert length(Cards.create_deck) == 52
  end

  test "contains? returns false for missing card" do
    missing_card = {:ace, :spades}
    deck = Cards.create_deck -- [missing_card]

    assert !Cards.contains?(deck, missing_card)
  end

  test "contains? returns true for existing card" do
    deck = Cards.create_deck
    included_card = hd deck

    assert Cards.contains?(deck, included_card)
  end
end
