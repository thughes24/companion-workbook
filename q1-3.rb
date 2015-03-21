arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
p arr

arr << "Dino"
p arr

arr.push("Dino", "Hoppy")
p arr

str = "Few things in life are as important as house training your pet dinosaur."
str.gsub!(" house", "")
p str

str = "The Flintstones Rock!"
count = str.scan('t').count
p count

str1 = "Fred"
str2 = "Barney"
comparison = str1.length <=> str2.length
p comparison

title = "Flintstone Family Members"
title.center(40)

arr = %w(Fred Barney Wilma Betty BamBam Pebbles)
arr.sort_by! {|x| x.length }
p arr