a = Array.new([12345])
b = String.new("hello")
c = Time.new

puts "a = #{a.to_s}"
puts "b = #{b.to_s}"
puts "c = #{c.to_s}\n\n"

time = Time.new # The moment I run this script.
time_2 = time + 60 # One minute later.

puts time, time_2
puts Time.mktime(2000, 1, 1) # Y2K
puts birth_date = Time.mktime(1990, 7, 17, 14, 45) # My birthday.

puts "I will be 1 billion seconds old on #{birth_date + 1_000_000_000}"

def birthday_spanks
  puts "What year were you born?"
  birth_year = gets.chomp.to_i

  puts "What month were you born?"
  birth_month = gets.chomp.to_i

  puts "What day were you born?"
  birth_day = gets.chomp.to_i


  # i = 0
  birth_day = Time.mktime((birth_year + 1), birth_month, birth_day)
  while birth_day <= Time.now
    birth_day += (60 * 60 * 24 * 365)
    # i += 1
    puts "#{i}: SPANK!"
  end
end

colour_array = [] # Same as Array.new
colour_hash = {} # Same as Hash.new

colour_array[0] = "red"
colour_array[1] = "green"
colour_array[2] = "blue"
colour_hash["strings"] = "red"
colour_hash["numbers"] = "green"
colour_hash["keywords"] = "blue"

colour_array.each do |colour|
  puts colour
end
colour_hash.each do |code_type, colour|
  puts "#{code_type}: #{colour}"
end

weird_hash = Hash.new

weird_hash[12] = "monkeys"
weird_hash[[]] = "emptiness"
weird_hash[Time.new] = "no time like the present"

class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = "fifty-eight"
    end

    english
  end
end

# I'd better test on a couple of numbers...
puts 5.to_eng
puts 58.to_eng

class Die

  def initialize
    # I'll just roll the die, though
    # we could do something else if we wanted
    # to, like setting the die with 6 showing.
    roll
  end

  def roll
    @number_showing = rand(1..6)
  end

  def showing
    @number_showing
  end

  def cheat(num)
    @number_showing = num if num.between?(1, 6)
  end

end

# # Let's make a couple of dice...
# dice = [Die.new, Die.new]
#
# # and roll them.
# dice.each do |die|
#   puts die.roll
# end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
die.cheat(4)
puts die.showing
