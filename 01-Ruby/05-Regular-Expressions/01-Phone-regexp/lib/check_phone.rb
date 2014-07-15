def french_phone_number?(phone_number)
  # TODO: true or false?

clean_num = clean_phone_num(phone_number)

  if /(0|[+]33)6\d{8}/.match(clean_num) >= 0
    return true
  else
    return false
  end

end


def clean_phone_num(phone_number)

    return "phone_number".gsub(/\W/,"")

end





