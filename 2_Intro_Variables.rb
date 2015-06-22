#Exercise 1 - Variables
puts "What's your name?"

name = gets.chomp

puts "Welcome, " + name


#Exercise 3 - Variables

10.times do
  puts name
end


#Exercise 4 - Variables

puts "What's your first name?"

first_name = gets.chomp

puts "What's your last name?"

last_name = gets.chomp

puts first_name + " " + last_name


#Exercise 2 - Variables
puts "How old are you?"

age = gets.chomp

puts "In 10 years you will be:"
puts age.to_i + 10
puts "In 20 years you will be:"
puts age.to_i + 20
puts "In 30 years you will be:"
puts age.to_i + 30
puts "In 40 years you will be:"
puts age.to_i + 40

#Exercise 5 - Variables
# The first screen prints: 3
#The second screen gives an error because variable x wasn't defined in the outer scope.

#Exercise 6 - Variables
# Variable "Shoes" hasn't been defined.