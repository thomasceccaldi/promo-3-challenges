#TODO:  Build HTML tags around  content given in the block
#       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]

def tag(tag_name, attr = nil)

text = yield
 if attr.nil?
 "<#{tag_name}>" + text + "</#{tag_name}>"
 else
 "<#{tag_name} #{attr[0]}='#{attr[1]}'>" + text + "</#{tag_name}>"
 end
end

#TODO:  Return time taken to execute the given block

def timer_for(i=1)

  if i>1
    i.times do
      yield
    end
  else
    x = Time.now
    yield
    elapsed_time = Time.now - x
  end
end

  #TODO:  Simply execute the given block on element

def transform(element)
  yield(element)

end
