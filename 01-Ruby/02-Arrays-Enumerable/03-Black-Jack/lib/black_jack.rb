# TODO: Use Random to get a new random score

def bank_score
  rand(16..21)
end

# TODO: Use Random to get a new random card

def pick_card
  rand(1..11)
end

# TODO: Take the bank and the score and output an array containing the bank and then the score

def game_outcome(bank, score)

  game_table = []
  game_table << bank_score
  game_table << score
  return game_table

end