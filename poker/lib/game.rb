class Game

    def initialize(*names)
        @players = []
        players.each do |name|
            players << Player.new(name)
        @deck = Deck.new
        end
    end

    def deal(deck)
        deck.each do |card|
            players.each do |player|
                player.cards << card
            end
        end

    end



end
