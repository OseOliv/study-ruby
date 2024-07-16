module Blackjack
  def self.parse_card(card)
    case card
    when 'ace' then 11
    when 'ten', 'king', 'queen', 'jack' then 10
    when 'two' then 2
    when 'three' then 3
    when 'four' then 4
    when 'five' then 5
    when 'six' then 6
    when 'seven' then 7
    when 'eight' then 8
    when 'nine' then 9
    else 0
    end
  end

  def self.card_range(card1, card2)
    score = parse_card(card1) + parse_card(card2)
    case score
    when 4..11 then 'low'
    when 12..16 then 'mid'
    when 17..20 then 'high'
    else 'blackjack'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    case
    when card1 == "ace" && card2 == "ace"
      "P"
    when card_range(card1, card2) == "blackjack" && parse_card(dealer_card) < 10
      "W"
    when card_range(card1, card2) == "high"
      "S"
    when card_range(card1, card2) == "mid" && parse_card(dealer_card) >= 7
      "H"
    when card_range(card1, card2) == "low"
      "H"
    else
      "S"
    end
  end
end
