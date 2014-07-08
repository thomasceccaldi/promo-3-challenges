def coach_answer(reponse)
    # TODO: return coach answer to your_message, with additional custom rules of yours !

  if reponse == "I am going to work right now SIR!"
    return ""

  elsif reponse.include? "?"
    return "Silly question, get dressed and go to work !"

  else
    return "I don't care son, get dressed and go to work !"
  end

end


