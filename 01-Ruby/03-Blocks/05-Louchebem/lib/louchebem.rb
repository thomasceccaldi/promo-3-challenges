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

  add_prefix(words)

  add_suffix(words)

  p words.join(" ")

end


def add_suffix(array)

  suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"]

  array.map! do |word|
    if word.size > 1 && word.match(/\w[^, ]/)
      "#{word}#{suffix[rand(7)]}"
    else
      "#{word}"
    end
  end

end


def add_prefix (array)

  array.map!{ |word| word.gsub("chat", "latch") }

  array.map!{ |word| word.gsub("atout", "latout") }

  array.map!{ |word| word.gsub("fou", "louf") }

end




louchebemize("j jnj boucher client, je suis la hahahah !! chat; chat atout")

