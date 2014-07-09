require_relative 'black_jack'


#TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card

def play_game

  puts "Card ? (type 'Y' or 'yes' for a new card)"
  response = gets.chomp.to_s
  while response == "yes" || response == "Y"
    puts "Card ? (type 'Y' or 'yes' for a new card)"
    response = gets.chomp.to_s
  end

end

# TODO: Returns custom message with player's score and bank's score

def state_of_the_game(score, bank)
  return "Your score is #{score}, bank is #{bank}!"

end

# TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice

def asking_for_card?(score)
  if score <= 21
    play_game
    if response == "yes" || response == "Y"
      return true
  else
    return false
  end
end

#TODO: return specific message depending on the game outcome (= bank's score and user's score)

def build_message_for(outcome)

  case outcome
    when outcome(1) > 21
    puts "You are over 21... you loose."
    else
      puts ""
  end

end
end
