# card.rb
VALIDCARDS =  [:hearts, :spades, :clubs, :diamonds]

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    unless VALIDCARDS.include? suit
      raise ArgumentError, "Invalid suit"
    end

    if value < 1 || value > 13
      raise ArgumentError, "#{value} is invalid value"
    end

    @value = value
    @suit = suit

  end

  def to_s
    ref = {Ace: 1, Jack: 11, Queen: 12, King: 13}
    if ref.values.include? @value
      "#{ref.key(@value)} of #{@suit}"
    else
      "#{@value} of #{@suit}"
    end
  end


end