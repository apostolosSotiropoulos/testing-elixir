defmodule Identicon do
  @moduledoc """
  Documentation for `Identicon`.
  """

  @doc """
  creates a 5 X 5 tiles representation that is vertically symetrical

  ## Examples

      iex> identicon = Identicon.create
      iex> [first, second, _, fourth, fifth] = identicon
      iex> first == fifth
      true
      iex> second == fourth
      true
  """
  def create do
    [
      [1,2,3,2,1],
      [1,2,3,2,1],
      [1,2,3,2,1],
      [1,2,3,2,1],
      [1,2,3,2,1]
    ]
  end
end
