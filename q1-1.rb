=begin
1) array will put [1,2,3]
2) ! modifies the caller whereas ? is used as a conditional operator
  != checks whether an object is not equal to another object

  putting ! after something is called will modify the caller
  !!<obj> will turn it into its boolean version, !<str> will return the opposite
=end
str = "Few things in life are as important as house training your pet dinosaur"
str.gsub! 'important', 'urgent'
puts str

x = (10..100).include?(42)

arr = ["fred","wilma", ['barney','betty'], ['bambam', 'pebbles']]
arr.flatten!

arr_hash = {"Fred"=>0, "Wilma"=>1, "Barney"=>2, "Betty"=>3, "BamBam"=>4, "Pebbles"=>5}
new_array = arr_hash.assoc("Barney")
puts new_array

arr = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
h = Hash.new
i=0
arr.each do |x|
  h[x] = i
  i+=1
end
puts h