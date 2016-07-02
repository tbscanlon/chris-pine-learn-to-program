require "./pet-dragon.rb"

def continue
  puts "Press enter to continue..."
  gets.chomp
end

def main_menu(pet)
  loop do
    puts "\nMENU:"
    puts "1. Feed"
    puts "2. Walk"
    puts "3. Put to bed."
    puts "4. Toss."
    puts "5. Rock gently.\n"

    puts "Enter your choice:"
    user_input = gets.chomp.to_i

    case user_input
    when 1
      pet.feed
      continue
    when 2
      pet.walk
      continue
    when 3
      pet.put_to_bed
      continue
    when 4
      pet.toss
      continue
    when 5
      pet.rock
      continue
    else "Please enter a number between 1 and 5."
    end

  end
end

line_width = 79
puts ("====".center(line_width))
puts ("PET DRAGON SIMULATOR".center(line_width))
puts ("====\n".center(line_width))

puts "Enter a name for your new dragon!:"
name = gets.chomp.capitalize
pet = Dragon.new(name)

main_menu(pet)
