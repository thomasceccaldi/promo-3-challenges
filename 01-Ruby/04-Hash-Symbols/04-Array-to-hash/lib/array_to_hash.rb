def array_to_hash(array)

hash = {
  array.each.to_sym => "value"
}

return hash

end