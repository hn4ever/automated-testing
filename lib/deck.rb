
# deck.rb

require_relative 'card'

class Deck

  def initialize
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value,suit)
        end
      end

  end

  def draw
    drawn_card= @cards.pop
    return drawn_card
  end

  def shuffle
    @cards.shuffle
  end

  def count
    @cards.length
  end

end
