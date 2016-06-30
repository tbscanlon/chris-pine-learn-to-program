def ask_question(question)
  good_answer = false

  while (not good_answer)
    puts "#{question}"
    answer = gets.chomp.downcase

    case answer
    when "yes"
      good_answer = true
      return true
    when "no"
      good_answer = true
      return false
    else puts "Please enter 'yes' or 'no'."
    end

  end
end

puts """
Hello, and thank you for taking the time to
help me with this experiment. My experiment
has to do with the way people feel about
Mexican food. Just think about Mexican food
and try to answer every question honestly,
with either a 'yes' or a 'no'. My experiment
has nothing to do with bed-wetting.\n
"""

# We ask these questions, but ignore their answers.

likes_tacos = ask_question("Do you like eating tacos?")
likes_burritos = ask_question("Do you like eating burritos?")
wets_bed = ask_question("Do you wet the bed?")
likes_chimichangas = ask_question("Do you like eating chimichangas?")

puts "Just a few more questions..."

likes_sopapillas = ask_question("Do you like sopapillas?")

# Ask lots of other questions about Mexican food.

puts """
DEBRIEFING:
Thank you for taking the time to help with
this experiment. In fact, this experiment
has nothing to do with Mexican food. It is
an experiment about bed-wetting. The Mexican
food was just there to catch you off guard
in the hopes that you would answer more
honestly. Thanks again.\n
#{wets_bed}
"""
