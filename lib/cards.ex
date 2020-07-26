defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  Create a deck of cards.

  ## Examples

      iex> Cards.create_deck()
     ["Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades",
      "Five of Spades", "Ace of Clubs", "Two of Clubs", "Three of Clubs",
      "Four of Clubs", "Five of Clubs", "Ace of HEarts", "Two of HEarts",
      "Three of HEarts", "Four of HEarts", "Five of HEarts", "Ace of Diamonds",
      "Two of Diamonds", "Three of Diamonds", "Four of Diamonds", "Five of Diamonds"]

  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
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
