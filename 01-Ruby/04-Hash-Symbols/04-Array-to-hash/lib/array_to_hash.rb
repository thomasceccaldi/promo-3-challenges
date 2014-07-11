def array_to_hash(array)

hash = {
  array.to_sym.each => "value"
}

return hash

end