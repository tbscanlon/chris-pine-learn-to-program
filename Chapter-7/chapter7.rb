names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3] # This is out of range.

languages = ['English', 'German', 'Ruby']

languages.each do |lang|
  puts "I love #{lang}!"
  puts "Don't you?"
end

puts "And let's hear it for C++!"
puts "..."

3.times do
  puts "Hip-Hip-Hooray!"
end

foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts
puts foods.join(", ")
puts
puts foods.join("  :)  ") + "  8)"

# This won't print anything.
200.times do
  puts []
end

favourites = []
favourites.push 'raindrops on roses'
favourites.push 'whiskey on kittens'

puts favourites[0]
puts favourites.last
puts favourites.length

puts favourites.pop
puts favourites
puts favourites.length
