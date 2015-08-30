#Lesson One Calculator Application
#Created by George Albrecht 
#8-30-2015
#Working. Need to determine how to figure out if user is entering garbage data (strings not numbers). Maybe Regex? 
#Also need to put in a rescue for divide by 0 error.

#Require pry for debugging
require 'pry'

#Method to get user input
def get_input msg
  puts "***** #{msg} *****"
end

#Method to handle operations
def operate num1, num2, oper

  o = case oper
  when 1
    result = num1.to_i + num2.to_i
    get_input "The solution is #{result}"
  when 2
    result = num1.to_i - num2.to_i
    get_input "The solution is #{result}"
  when 3
    result = num1.to_i * num2.to_i
    get_input "The solution is #{result}"
  when 4
    result = num1.to_f / num2.to_f
    get_input "The solution is #{result}"
  end

end

#variable to see if the user wants to continue
continue = 0

while continue == 0 

  #Get the user inputs for first and second numbers

  get_input "Please enter the first number."
  number1 = gets.chomp

  #Get second num
  get_input "Please enter the second number."
  number2 = gets.chomp

  #Get operator
  get_input "Please enter 1 for addition, 2 for subtraction, 3 for multiplication, 4 for division"
  operator = gets.chomp.to_i

  #Perform the operation
  operate(number1, number2, operator)

  #Check if the user wants to continue
  get_input "Enter 0 to continue, or enter any other number to quit"
  continue = gets.chomp.to_i

end
