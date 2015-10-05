#1. What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

#Answer: 1 2 2 3


#2. Describe the difference between ! and ? in Ruby. => ! in a method modifies the caller, whereas ? looks for a given item.

#Explain what would happen in the following scenarios: 
 #what is != and where should you use it? => 1= is "not equal to"
 #put ! before something, like !user_name => not equal to (!user_name is not user_name)
 #put ! after something, like words.uniq! => It mofifies the caller (a words array changes to an array without repeated words)
 #put ? before something => It's a conditional operator
 #put ? after something => It looks for a given item within the caller
 #put !! before something, like !!user_name => It returns the boolean


 #3. Replace the word "important" with "urgent" in this string:

 advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub("important", "urgent")


#4. The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ. What does the follow method calls do (assume we reset numbers to the original array between method calls)?

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) #=> It deletes the value in the index 1
numbers.delete(1) #=> It deletes the value 1


#5. Programmatically determine if 42 lies between 10 and 100.

42 >= 10 || 42 <= 100


#6. Starting with the following string, show two different ways to put the expected "Four score and " in front of it.

famous_words = "seven years ago..."

famous_words.insert(0, "Four scores and ")


#7. Fun with gsub:

def add_eigth(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eigth(number)") }

p how_deep

#If we take advantage of Ruby's Kernel#eval method to have it execute this string as if it were a "recursive" method call

eval(how_deep)

#what will be the result? => 42


#8. Make this into an un-nested array.

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

# 9. Turn this hash into an array containing only two elements: Barney's name and Barney's number

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.assoc("Barney")


#10. Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_2 = {}

flintstones.each_with_index do |name, index|
  flintstones_2[name] = index
end

