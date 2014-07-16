# Encoding: utf-8


def mail_joke(email)
  # TODO: Return a joke suited to the email provided

  if email =~ /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/

    domain_name = email.split("@")

    case domain_name[1]

    when "gmail.com"
      return "#{domain_name[0]}, you're an average but modern person"

    when "hotmail.com"
      return "naze"

    when "live.com"
      return "#{domain_name[0].gsub(/[.]/," ")}, aren't you born before 1973?"

    when "lewagon.org"
      return "Well done #{domain_name[0]}, you're skilled and capable"

    else
      return "Sorry #{domain_name[0]}, we don't know how to judge '#{domain_name[1]}'"
    end

  else
    fail ArgumentError, "Should be a string"
  end

end

