require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.

  puts "C'est quoi ton probleme ?"
  saisie = gets.chomp

  puts coach_answer(saisie)

