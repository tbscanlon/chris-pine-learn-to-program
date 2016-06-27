puts 1 > 2
puts 1 < 2

puts 5 >= 5
puts 5 <= 4

puts 1 == 1
puts 2 != 1

puts 'cat' < 'dog'

puts "Hello, what's your name?"
name = gets.chomp
puts "Hello, #{name}."
puts "What a lovely name!" if name == "Chris" || name == "Katy"

# puts "I am a fortune-teller. Tell me your name: "
# name = gets.chomp

# if name == "Chris"
  # puts "I see great things in your future."
# else
  # puts "Your future is... Oh my! Look at the time!"
  # puts "I really have to go, sorry!"
# end

puts "Hello, and welcome to 7th grade English."
puts "My name is Mrs. Gabbard. And your name is...?"
name = gets.chomp

if name == name.capitalize
  # she's civil.
  puts "Please have a seat, #{name}."
else
  # she gets mad.
  puts "#{name}? You mean #{name.capitalize}, right?"
  puts "Don't you even know how to spell your name??"
  reply = gets.chomp

  if reply.downcase == "yes"
    puts "Hmmph! Well, sit down!"
  else
    puts "GET OUT!!"
  end
end

command = "Write something below: "

while command != "bye"
  puts command
  command = gets.chomp
end

puts "Come again soon!"
