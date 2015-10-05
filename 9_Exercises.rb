# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  array.each do |number|
    puts number
  end



# 2. Same as above, but only print out values greater than 5.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  array.each do |number|
    if number > 5
    puts number
    end
  end


# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_numbers = array.select do |number|
  if number.odd? == true
    puts number
  end

end


# 4. Append "11" to the end of the original array. Prepend "0" to the beginning.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.push(11)
array.unshift(0)


# 5. Get rid of "11". And append a "3"

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.pop
array << 3


# 6. Get rid of duplicates without specifically removing any one value.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.uniq


# 7. What's the major difference between an Array and a Hash?

#An array is a list of postion-related values, whereas a hash is a list of interrelated keys-values.


# 8. Create a Hash using both Ruby syntax styles.

dictionary = {house: "Haus", car: "Auto", animal: "Tier" }

dictionary = {:house => "Haus", :car => "Auto", :animal => "Tier" }


# 9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}.
  #Get the value of key `:b`.
h = {a:1, b:2, c:3, d:4}

h[:b]

  #Add to this hash the key:value pair `{e:5}`
h[:e] = 5

  #Remove all key:value pairs whose value is less than 3.5

h.delete_if do |key, value|
  value < 3.5
end


#10. 

#Can hash values be arrays? => Yes.

dictionary_hash = { house: ["Haus", "casa"], car: ["Auto", "coche"], animal: ["Tier", "animal"] }

#Can you have an array of hashes? (give examples) => Yes.

dictionary_array = [ {house: "Haus"}, {car: "Auto"}, {animal: "Tier"}]


#11. Look at several Rails/Ruby online API sources and say which one you like best and why.

#I guess ruby-doc.org, as it is the official guide and thus more reliable. It is not easy at the beginning to understand it fully though.


#12. Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


# 13. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
contacts = {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}, 
          "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", :phone=>"123-234-3454"}}

puts "Joe Smith's email is #{contacts["Joe Smith"][:email]} and Sally Johnson's phone is #{contacts["Sally Johnson"][:phone]}."


# 14. In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. 

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

puts contacts


#15. Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |string| string.start_with?("s") }

arr.delete_if { |string| string.start_with?("s", "w") }

#16. Take the following array and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.map! { |string| string.split}

a.flatten!

p a

# 17. What will the following program output? => It outputs "These hashes are the same!"

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end





