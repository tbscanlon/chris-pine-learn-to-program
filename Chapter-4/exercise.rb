puts "Hello. I am THE COMPUTER."
puts "Please tell THE COMPUTER your first name:"
first_name = gets.chomp

puts "Please tell THE COMPUTER your middle name:"
middle_name = gets.chomp

puts "Please tell THE COMPUTER your surname"
surname = gets.chomp

id_number = rand(99999)

puts "THE COMPUTER has registered you as the following:"
puts first_name + ' ' + middle_name + ' ' + surname
puts "Your IDENTITY NUMBER is: " + String(id_number)

puts "THE COMPUTER would like to know what your favourite number is:"
fav_number = gets.chomp

puts String(fav_number) + " is an interesting choice."
puts "However, have you considered changing your favourite number to " + String(id_number) + "?"

if Integer(id_number) > Integer(fav_number)
  puts "THE COMPUTER recommends this number as it is better and larger."
else
  puts "THE COMPUTER recommends this number as it is better."
end

puts "It is also your IDENTITY NUMBER."
