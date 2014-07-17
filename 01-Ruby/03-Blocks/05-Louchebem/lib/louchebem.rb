# Encoding: utf-8
#TODO: implement your louchebem translator

 # diviser la phrase en mots
 # remplacer la première lettre par un l


  # ajouter à la fin du mot : ["em", "é", "ji", "oc", "ic", "uche", "ès"]

  # si un mot commencer par une voyelle "ajout d'un suffixe différent"

  # ne pas remplacer les mots de un caractère

  # === > fonction string.size

  # si un mot commence par deux consonnes ou plus l'intégrer au debut


def louchebemize(sentence)

  words = sentence.split
  p words

  suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"]

  if words.select { |word| word.size > 1 }

  long_words.map!{ |word| "#{word}#{suffix[rand(7)]}" }

  p long_words

end

louchebemize("j j n j je suis la hahahah")

