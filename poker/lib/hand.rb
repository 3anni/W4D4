class Hand
  def initialize(cards)
    @cards = cards
  end

  def hand?
    card_values = @cards.map { |card| card.value }
    card_suits = @cards.map { |card| card.suit }





  end

  def tiebreaker


  end

  def best_hand

  end


  private
  def royal_flush
    flush && straight && high_card == 13
  end

  def straight_flush
    flush && straight ? high_card : false
  end

  def four_of_a_kind(hash)
    hash.values == [4] ? hash.keys[0] : false
  end

  def full_house(hash)


    hvs = hash.values.sort { |k,v|  }
    if hvs == [2,3]
      sorted = hash.sort_by {|k,v| v}

      return sorted[0][
    else
      return false
    end
  end

  def flush
    @cards.all? { |card| value_counts[card.suit] == @cards[0].suit } ? high_card : false
  end

  def straight
    if (0...4).all? { |i| @cards[i] + 1 = @cards[i + 1] } ? high_card : false
  end

  def three_of_a_kind(hash)
    hash.values == [3] ? hash.keys.first : false
  end

  def two_pair(hash)
    hash.value ==[2, 2] ? hash.keys : false
  end

  def one_pair(hash)
   hash.value==[1] ? hash.keys.first : false
  end

  def high_card
    @cards.inject(0) {|max, card| [card.value, max].max }
  end

  def pairs_kinds
    value_counts = Hash.new(0)
    @cards.each { |card| value_counts[card.value] += 1 }
    value_counts.select { |_, v| v > 1}
  end
end
