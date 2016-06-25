hours_in_a_year = 24 * 365
minutes_in_a_decade = ((60 * 24) * 365) * 10
seconds_in_a_year = ((60 * 60) * 24) * 365
age_in_seconds = seconds_in_a_year * 24
lifetime_chocs = 3 * 365 * 80

puts "%d hours in a year" % hours_in_a_year
puts "%d minutes in a decade" % minutes_in_a_decade
puts "I am %d seconds old" % age_in_seconds
puts "I aim to eat %d chocolates in my life" % lifetime_chocs

# approx age in years if you were 1.246 billion seconds old
puts 1246000000.00 / age_in_seconds
