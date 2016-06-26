puts "WHADDAYA WANT?!?"
answer = gets.chomp

puts "WHADDYA MEAN \"#{answer.upcase}\"?!? YOU'RE FIRED!!"

line_width = 50
puts("Table of Contents\n".center(line_width))
puts("Chapter 1: Numbers".ljust(line_width/2) + ("page 1".rjust(line_width/2)))
puts("Chapter 2: Letters".ljust(line_width/2) + ("page 72".rjust(line_width/2)))
puts("Chapter 3: Variables".ljust(line_width/2) + ("page 118".rjust(line_width/2)))

puts "\n\n"
puts 5 **2
puts 5 **0.5
puts 7 / 3
puts 7 % 3
puts 365 % 7

puts "\n\n"
puts((5-2).abs)
puts((2-5).abs)

puts "\n\n"
puts "The weatherman said there is a #{rand(101)}% chance of rain, but you can never trust a weatherman."

puts "\n\n"
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts "\n"
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts "\n\n"
puts (Math::PI)
puts (Math::E)
puts (Math.cos(Math::PI / 3))
puts (Math.tan(Math::PI / 4))
# puts (Math.log(Math::E **2))
puts ((1 + Math.sqrt(5)) / 2)
