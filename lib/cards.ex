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

  @doc """
  Shuffle a deck of cards.

  ## Examples

      iex> Cards.shuffle()
      ["Ace", "three", "two"]

  """
  def shuffle(deck) do
    deck |> Enum.shuffle()
  end

  @doc """
    Verify if a card exists in a deck.

  ## Examples

      iex> deck = Cards.create_deck()
      ["Ace", "two", "three"]
      iex> deck |> Cards.contains?("Ace")
      true
      iex> deck |> Cards.contains?("Four")
      false

  """
  def contains?(deck, card) do
    deck |> Enum.member?(card)
  end
end
