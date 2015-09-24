#Exercise 1 - Hashes

family = { uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"]
}

family_new = family.select do |title, name| 
  title == :sisters || title == :brothers
end

family_immediate = family_new.values.flatten

p family_immediate

#Exercise 2 - Hashes

girls = { Jane: 21, Jill: 19}
boys = {Frank: 20, Rob: 22}

#The merge method PRINTS OUT both hashes combined in one.
p girls.merge(boys)

p girls # => {:Jane=>21, :Jill=>19}
p boys # => {:Frank=>20, :Rob=>22}

#On the other hand, the merge! method combines both hashes permanently, discarding the "girls" original hash.

girls_and_boys = girls.merge!(boys)

p girls # => {:Jane=>21, :Jill=>19, :Frank=>20, :Rob=>22}
p boys # => {:Frank=>20, :Rob=>22}

#Exercise 3 - Hashes

car = { brand: "Volkswagen", type: "New Beetle", colour: "blue"}

car.each do |key, value|
  puts "#{key}"
end

car.each do |key, value|
  puts "#{value}"
end

car.each do |key, value|
  puts "The #{key} is #{value}."
end

#Exercise 4 - Hashes

person = {name: "Bob", occupation: "web developer", hobbies: "painting"}

person[:name]

# Exercise 5 - Hashes

car.value?("Volkswagen")

#Exercise 6 - Hashes

words =  ["demo", "none", "tied", "evil", "dome", "mode", "live",
          "fowl", "veil", "wolf", "diet", "vile", "edit", "tide",
          "flow", "neon"]

result = {}

words.each do |word|
  key = word.split("").sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

p result
#Exercise 7 - Hashes

x = "hi there"
my_hash = {x: "some value"} #x: is a symbol/key with the value "some value"
my_hash2 = {x => "some value"} #x is the variable "hi there", the latter being than the key with the value "some value".

#Exercise 8 - Hashes

#The answer is B