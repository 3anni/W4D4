class Card
    attr_reader :suit, :value
    def initialize(suit, value)
        @value = value
        @suit = suit
    end

    # def create_deck
    #     suits =[:clubs, :hearts, :spades, :diamonds]
    #     values [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
    #     deck = []

    #     suits.each do |suit|
    #         values.each do |value|
    #             deck << Card.new(suit, value)
    #         end
    #     end
    #     deck
    # end

end
