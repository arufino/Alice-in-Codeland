#Exercise 1 - Loops & Iterators

=begin
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
=end

#It returns the actual array's numbers.

#Exercise 2 - Loops & Iterators

answer = ""
while answer != "STOP" do

  puts "Hi, how are you doing?"
  answer = gets.chomp
  end

#Exercise 3 - Loops & Iterators

names = ["John", "David", "Peter"]

names.each_with_index do |name, number|
  puts "#{number + 1}. #{name}"
end

#Exercise 4 - Loops & Iterators

#I had this option:
def countdown(start)
  puts start
  if start > 0
    countdown(start - 1)
  end
end
countdown(10)

#But rewrote it after watching the video:
def countdown(start)
  if start <= 0
    puts start
  else
    puts start
    (start - 1)
  end
end

countdown(10)
countdown(-4)


