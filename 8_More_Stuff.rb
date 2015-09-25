#Exercise 1 - More Stuff

array = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

array.each do |word|
  if word =~ /lab/
    puts word
  elsif word =~ /Lab/
    puts word
  end
end


#Exercise 2 - More Stuff

#It prints nothing (.call method missing)
#It returns #<Proc:0x007fd8d59d76b8@(irb):15>


#Exercise 3 - More Stuff

#Exception handling is adding a piece of code that determines how to react if the program experiences errors.


#Exercise 4 - More Stuff

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


#Exercise 5 - More Stuff

#As the variable is a block, there's an ampersand missing.
#It should read like so:

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }