def hex
  options = ("a".."z").to_a.concat(("1".."9").to_a).shuffle!
  h1 = options.join('')[0,8]
  h2 = options.shuffle.join('')[0,4]
  h3 = options.shuffle.join('')[0,4]
  h4 = options.shuffle.join('')[0,4]
  h5 = options.shuffle.join('')[0,12]
  uidd = "#{h1}-#{h2}-#{h3}-#{h4}-#{h5}"
  p uidd
  end
hex 

class String
  def map_words!
    str = self
    arr = str.split(" ")
    arr.reverse!
    str = arr.join(" ")
  end
end
string = "roger smells"
p string.map_words!

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.count < 4
    return false
  else
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false if !is_a_number?(word)
  end
  return true
end


