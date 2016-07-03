toast = Proc.new do # Procedure
  puts "Cheers!"
end

3.times { toast.call }

do_you_like = Proc.new do |a_good_thing|
  puts "I *really* like #{a_good_thing}!"
end

do_you_like.call "chocolate"
do_you_like.call "ruby"

# Procs vs. methods
# - You can't pass methods to other methods, but you can pass procs to methods
# - Methods can't return other methods, but they can return procs.
# - Procs are objects, methods aren't

def do_self_importantly(some_proc)
  puts "Everybody just HOLD ON! I have something to do..."
  some_proc.call
  puts "Ok everyone, I'm done. Go on with what you were doing."
end

say_hello = Proc.new do
  puts "hello"
end

say_goodbye = Proc.new do
  puts "goodbye"
end

do_self_importantly(say_hello)
do_self_importantly(say_goodbye)

def maybe_do(some_proc)
  some_proc.call if rand(2) == 0
end

def twice_do(some_proc)
  2.times { some_proc.call }
end

wink = Proc.new do
  puts "<wink>"
end

glance = Proc.new do
  puts "<glance>"
end

maybe_do(wink)
maybe_do(glance)
twice_do(wink)
twice_do(glance)

def do_until_false(first_input, some_proc)
  input = first_input
  output = first_input

  while output
    input = output
    output = some_proc.call(input)
  end

  input
end

build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if last_number <= 0
    false
  else
    array.pop
    array.push last_number * last_number
    array.push last_number - 1
  end
end

always_false = Proc.new do |just_ignore_me|
  false
end

puts do_until_false([5], build_array_of_squares).inspect
puts do_until_false("I'm writing this at 3:00 am; someone knock me out!", always_false)

def compose(proc1, proc2)
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

square_it = Proc.new do |x|
  x * x
end

double_it = Proc.new do |x|
  x + x
end

double_then_square = compose(double_it, square_it)
square_then_double = compose(square_it, double_it)

puts double_then_square.call(5)
puts square_then_double.call(5)

class Array
  def each_even(&was_a_block_now_a_proc)
    # We start with "true" because arrays start with 0, which is even.
    is_even = true

    self.each do |object|
      if is_even
        was_a_block_now_a_proc.call(object)
    end

    is_even = (not is_even) # Toggle from even to odd or vice versa.
end
end
end

["apple", "bad apple", "cherry", "durian"].each_even do |fruit|
  puts "Yum! I just love #{fruit} pies, don't you?"
end

# Remember, we are getting the even-numbered elements
# of the array, all of which happen to be odd numbers,
# just because I like to cause problems like that.
[1, 2, 3, 4, 5].each_even do |oddball|
  puts "#{oddball.to_s} is NOT an even number!"
end
