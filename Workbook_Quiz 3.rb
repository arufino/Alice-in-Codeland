#1. Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w[Fred, Barney, Wilma, Betty, BamBam, Pebbles]


#2. How can we add the family pet "Dino" to our usual array?

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"


#3. How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino", "Hoppy")


#4. Shorten this sentence (...remove everything starting from "house").

advice = "Few things in life are as important as house training your pet dinosaur."

#Review the StringSlice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

advice.slice!(0..37)

# As a bonus, what happens if you use the String#slice method instead?
# 0..37 are the positions deleted.


#5. Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"

statement.scan("t").count


=begin  
6. Back in the stone age (before CSS) we used spaces to align things on the screen. 
If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?
=end

title = "Flintstone Family Members"

title.center(40)