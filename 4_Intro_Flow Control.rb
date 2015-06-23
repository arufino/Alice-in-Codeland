#Exercise 1 - Flow Control

=begin
1. (32 * 4) >= 129  - FALSE
2. false != !true - FALSE
3. true == 4 - FALSE
4. false == (847 == '874') - TRUE
5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false - TRUE
=end

#Exercise 2 - Flow Control
def caps(argument)
    if argument.length > 10
	   puts argument.upcase
    else
	   puts argument
	end
end

caps("It's a beautiful day")

#My exercise is a bit different than the solution you offer online. Is it OK though? When I run the code, it seems to be fine.

#Exercise 3 - Flow Control
puts "Please insert a number between 0 and 100"
number = gets.chomp.to_i

    if number < 0
        puts "#{number} is not a valid number."
    elsif number <= 49
        puts "#{number} is between 0 and 50."
    elsif (number >= 50) && (number <= 100)
        puts "#{number} is between 50 and 100."
    else
        puts "#{number} is above 100."
    end

#Exercise 4 - Flow Control
"4" == 4 ? puts("TRUE") : puts("FALSE") #"FALSE"

x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
    puts "Did you get it right?"
else
    puts "Did you?"
end #"Did you get it right?"

y = 9
x = 10
if (x + 1) <= (y)
    puts "Alright."
elsif (x + 1) >= (y)
    puts "Alright now!"
elsif (y + 1) == x
    puts "ALRIGHT NOW!"
else
    puts "Alrighty!"
end #"Alright now!"

#Exercise 5 - Flow Control


puts "Please insert a number between 0 and 100"
number = gets.chomp.to_i

def exercise(value)
    case 
    when value < 0
        puts "#{value} is not a valid number."
    when value <= 49
        puts "#{value} is between 0 and 50."
    when (value >= 50) && (value <= 100)
        puts "#{value} is between 50 and 100."
    else
        puts "#{value} is above 100."
    end
end

exercise(number)

puts "Please insert a number between 0 and 100"
number2 = gets.chomp.to_i

def exercise2(value2)
    case value2
    when 0 .. 50
        puts "#{value2} is between 0 and 50."
    when 51 .. 100
        puts "#{value2} is between 50 and 100."
    else
        if value2 > 100
        puts "#{value2} is above 100."
        else
            puts "#{value2} is not a valid number."
        end
    end
end

exercise2(number2)

#Exercise 6 - Flow Control

    def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
        end
    end

    equal_to_four(5)

    #The if-condition had no end.




