table_of_contents = {
  "Chapter 1": ["Numbers", "page 1"],
  "Chapter 2": ["Letters", "page 72"],
  "Chapter 3": ["Variables", "page 118"]
}

line_width = 50
puts("Table of Contents\n".center(line_width))

table_of_contents.each do |chapter, title|
  puts("#{chapter.to_s}: #{title[0]}".ljust(line_width/2) + ("#{title[1]}".rjust(line_width/2)))
end

# type as many words as user wants
# stop when enter is pressed without any words
# then print out the words in alphabetical order

user_input = "ok let's go"
entered_words = []

while user_input != ""
  puts "Enter a word (enter nothing to stop):"
  user_input = gets.chomp
  entered_words.push(user_input)
end

puts entered_words.sort

# sorted_words= []
# entered_words.each do |words|
#   entered_words.each do |word|
#     sorted_words.push(word) if word <= words
#   end
# end
#
# puts sorted_words
