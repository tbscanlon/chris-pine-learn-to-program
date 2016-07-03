def log(block, block_description)
  puts "Beginning \"#{block_description}\"..."
  block.call
  puts "...\"#{block_description}\" finished, returned: #{block.call}"
end

def do_self_importantly(some_proc)
  puts "Everybody just HOLD ON! I have something to do..."
  some_proc.call
  puts "Ok everyone, I'm done. Go on with what you were doing."
end

food = Proc.new do
  "I like thai food!"
end

outer_block = Proc.new do
  puts "Outer block"
  food.call
end

square_it = Proc.new do |x|
  x * x
end

log(outer_block, "food I like")
