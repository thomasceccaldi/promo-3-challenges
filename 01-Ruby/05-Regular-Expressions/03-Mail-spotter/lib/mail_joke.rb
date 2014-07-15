# Encoding: utf-8

def mail_joke(email)
  # TODO: Return a joke suited to the email provided

  domain_name = email.split("@").delete_at(0)

  if email =~ /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/

    case domain_name.to_s

    when gmail.com
      puts "sympa"

    when hotmail.com
      puts "naze"

    when yahoo.com
      puts "parents"

    when aol.com
      puts "old"

    else
      p "Well done boris, you're skilled and capable"
    end

  end

end