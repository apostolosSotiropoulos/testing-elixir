defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.say_hi()
      :hi

  """
  def say_hi do
    :hi
  end

  def create_deck do
    Enum.map(suits(), &all_cards_for_suit/1) |>
      List.flatten()
  end

  def shuffle(deck) do
    deck |> Enum.shuffle()
  end

  def contains?(cards, card) do
    Enum.member? cards, card
  end

  def deal(deck, number_of_cards) do
    {dealt_cards, rest_of_the_deck} = Enum.split(deck, number_of_cards)
    %{dealt_cards: dealt_cards, rest_of_the_deck: rest_of_the_deck}
  end

  defp ranks do
    [:ace] ++ Enum.to_list(2..10) ++ [:jack, :queen, :king]
  end

  defp suits do
    [:clubs, :diamonds, :hearts, :spades]
  end

  defp all_cards_for_suit(suit) do
    Enum.map(ranks(), fn rank -> {rank, suit} end)
  end
end
