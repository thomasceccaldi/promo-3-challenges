# Encoding: utf-8

def mail_joke(email)
  # TODO: Return a joke suited to the email provided

  domain_name = email.split("@")

  if email =~ /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/

    case domain_name[1].to_s

    when "gmail.com"
      puts "sympa"

    when "hotmail.com"
      puts "naze"

    when "yahoo.com"
      puts "aren't you born before 1973?"

    when "aol.com"
      puts "old"

    else
      p "Sorry voyageurdufutur, we don't know how to judge '#{domain_name[1]}'"
    end
  else
    false

  end

end
