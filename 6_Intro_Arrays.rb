#Exercise 1 - Arrays

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "The array includes #{number}."
end


#Exercise 2 - Arrays

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

#It returns 1. [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] 

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)

#It returns [1, 2, 3]. [["b"], ["a", [1, 2, 3]]] 

#Exercise 3 - Arrays

arr = [["test", "hello", "world"],["example", "mem"]]

arr.last[0]

#Exercise 4 - Arrays

arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5)

#It returns 3.

2. arr.index[5]

=begin
It returns an error: NoMethodError: undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>
  from (irb):8
  from /Users/Alice/.rvm/rubies/ruby-2.0.0-p481/bin/irb:12:in `<main>'.
=end

3. arr[5]

#It returns 8.


#Exercise 5 - Arrays

string = "Welcome to Tealeaf Academy!"
a = string[6]
# "e"

b = string[11]
# "T"

c = string[19]
# "A"

#Exercise 6 - Arrays

names = ["bob", "joe", "susan", "margaret"]
names["margaret"] = "jody"

#The value cannot be a string, it has to be an integer. Solution:

names[3] = "jody"

#Exercise 7 - Arrays

array = [1, 2, 3, 4, 5]
array_2 = []

array.each do |number|
	array_2 << number + 2
end

p array
p array_2

