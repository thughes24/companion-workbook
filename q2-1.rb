10.times{ |index| puts "The Flintstones Rock!".rjust(21 + index) }

str = "The Flinstones Rock"
result = {}
letters = ('A'..'Z').to_a.concat(('a'..'z').to_a)
letters.each { |x|
  count = str.scan(x).count
  result[x] = count if count > 0
}
p result

ary = [1, 2, 3, 4]
ary.each do |item|
  p item
  ary.shift(1)
end




def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0,1)
puts "result is #{result}"

def titleize(str)
  arr = str.split(" ")
  cap = arr.each {|x| x.capitalize! }.join(' ')
  p cap
end
titleize("cats suck")

class String
  def short_version(length)
    result = self.dup
    starting_length = self.length
    if starting_length > length
      result = result [0, length -1]
      result +="..."
    end
    return result
  end
end
characters = [
    {:character=>"Batman", :real_name=>"Bruce Wayne", :description=>"Comic book superhero who fights crime while wearing a costume loosely based on a bat"}, 
    {:character=>"Robin", :real_name=>"Dick Grayson", :description=>"Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes"},
    {:character=>"Commisioner Gordon", :real_name=>"James Gordon", :description=>"Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone"}, 
    {:character=>"Alfred", :real_name=>"Alfred", :description=>"The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman"}
    ]
characters.each { |x| p x.values.map {|value| value.short_version(32)}.join("     ")}

hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

pri = hash.values
pri.each do |x| 
  if x["age"] > 40
    x["Cat"] = "Senior"
  elsif x["age"] < 18
    x["Cat"] = "Kid"
  else
    x["Cat"] = "Adult"
  end
end
puts pri
    