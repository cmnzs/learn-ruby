def sandwich
  puts "top bread"
  yield
  puts "bottom bread"
end

sandwich { puts "mutton, lettuce, tomato" }

def tag(tagname, text)
  html = "<#{tagname}>#{text}</#{tagname}>"
  yield html
end

tag("p", "lorem ipsum dolor sit amet") { |markup| puts markup }
