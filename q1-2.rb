hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
present = hash.include? "Spot"
p present

hash = {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}
sum = 0
hash.each {|x,y| sum +=y }
puts sum

hash = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
hash.delete_if { |x,y| y>100 }
puts hash

str = "The Munsters are creepy in a good way."
puts str.capitalize
puts str.upcase.sub("T","t").sub("M","m")
puts str.downcase
puts str.upcase

hashs = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
rest = {"Marilyn" => 22, "Spot" => 237}
hashs.merge!(rest)
puts hashs

ages = hashs.values
puts hashs.min

arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
index = arr.index{ |name| name[0, 2] == "Be" }
puts index

arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.map! {|x| x[0,3]}
puts arr