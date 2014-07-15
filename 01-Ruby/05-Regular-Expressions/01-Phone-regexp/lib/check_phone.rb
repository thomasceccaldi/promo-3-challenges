def french_phone_number?(phone_number)
  # TODO: true or false?

clean_num = clean_phone_num(phone_number)

  if /(0|\+33)[1-9]\d{8}$/ =~ clean_num.to_s
    true
  else
    false
  end

end


def clean_phone_num(phone_number)

    phone_number.gsub(/[^\d\+]/, "")

end





