bottles_of_beer = 1..100

bottles_of_beer.reverse_each do |bottle|
  # bottle > 1 ? (puts "#{bottle} bottles of beer on the wall etc.") : (puts "#{bottle} bottle of beer on the wall SONG OVER")
  puts "#{bottle} bottles of beer on the wall. #{bottle} bottles of beer."
  puts "Take one down, pass it around, #{bottle - 1} bottles of beer on the wall."
end

puts "Let's work out some leap years."
puts "Enter a year to start on:"
start_year = gets.chomp.to_i

puts "Enter an end year:"
end_year = gets.chomp.to_i

year_range = start_year..end_year

year_range.each do |year|
  if year % 4 == 0
    puts year unless year % 100 == 0 && year % 400 != 0
  end
end

puts "Talk to grandma? (Y/N)"
response = gets.chomp.upcase
exit if response == "N"

bye_counter = 0
puts "Say something to Grandma:"

while bye_counter < 3
  response = gets.chomp
  if response == "BYE"
    puts "HUH?! SPEAK UP SONNY!" if bye_counter <= 1
    bye_counter += 1
  elsif response != response.upcase
    puts "HUH?! SPEAK UP, SONNY!"
    bye_counter = 0
  else
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
    bye_counter = 0
  end
end
