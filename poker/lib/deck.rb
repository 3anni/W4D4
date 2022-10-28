require_relative "card"


class Deck
    def initialize
        @deck = create_deck.shuffle
    end

     def create_deck
        suits =[:clubs, :hearts, :spades, :diamonds]
        values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
        deck = []

        suits.each do |suit|
            values.each do |value|
                deck << Card.new(suit, value)
            end
        end
        deck
    end






end
