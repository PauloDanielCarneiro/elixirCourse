defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  Create a deck of cards.

  ## Examples

      iex> Cards.create_deck()
      ["Ace", "two", "three"]

  """
  def create_deck do
    ["Ace", "two", "three"]
  end

  def shuffle(deck) do
    deck |> Enum.shuffle()
  end
end
