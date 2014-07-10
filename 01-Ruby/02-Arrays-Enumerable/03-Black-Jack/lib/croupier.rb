require_relative 'black_jack'


#TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card

def play_game

  player_score = 0
  bank = bank_score

  while asking_for_card?(score)
    score += pick_card
    puts state_of_the_game(score, bank)
  end

end

# TODO: Returns custom message with player's score and bank's score

def state_of_the_game(score, bank)
  return "Your score is #{score}, bank is #{bank}!"
end

# TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice

def asking_for_card?(score)
  if score <= 21
    puts "New card?"
    response = gets.chomp.to_s
    if response == "yes" || response == "Y"
      return true
  else
    return false
  end
end

#TODO: return specific message depending on the game outcome (= bank's score and user's score)

def build_message_for(outcome)

  outcome = game_outcome(bank_score, score)

  case game_table
    when game_table(1) >= 21
    "You are over 21... you loose."
    when game_table(1) == 21
    "Black Jack!"
    when game_table(1) <= game_table(0)
    "Bank beats you! You loose."
    else
    "You beat the bank! You win."
  end

end
end
