hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
  }
i = 0
hash.each do |name, has|
  if has["gender"] == "male"
    i += has["age"]
  end
end
p i

index = 0
hash = hash.each{ |key, value| value[:original_order] = index; index += 1 }
hash = hash.each{ |key, value| value[:length_order] = key.length }

hash = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
  }
hash.each do |name, h|
  puts "#{name} is a #{h['age']} year old #{h['gender']}"
end

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabega"
  an_array_param << "rutabega"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

str = "Humpty Dumpty sat on a wall."
x = str.split(" ")
x.reverse!
x.join(" ")
puts x

class String
  def pretty_short_version(len)
    result = self.dup
    starting_length = result.length
    if starting_length > len
     d =  result[0,len-3]
     r = d.split(' ')
     if r.count > 1
     r.pop
     return r.join(' ') + "..."
   else
      return d + "..."
    end
  end
  end
  end

c = "Pooisllysmelly poo poo poo poo poo"
puts c.pretty_short_version(32)