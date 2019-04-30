defmodule Cards do
  def create_deck do
   values = ["Ace", "two", "three", "four", "five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    #solution number 1
    # cards = for value <- values do
    #     for suit <- suits do
    #       "#{value} of #{suit}"
    #     end
    # end

    # List.flatten(cards)

      #the better and shorter way
      for suit <- suits, value <- values do
        
          "#{value} of #{suit}"
        end
    

  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  # the question mark does not mean anything specific, it just notes to other developers that the method will return a true/false value
  def contains?(deck, card) do
    #The member function just checks to see if the element exists within the enumerable
    Enum.member?(deck, card)
    
  end
  
end
