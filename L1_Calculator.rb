#Lesson One Calculator Application
#Created by George Albrecht 
#8-30-2015
#Working. Need to determine how to figure out if user is entering garbage data (strings not numbers). Maybe Regex? 
#Also need to put in a rescue for divide by 0 error.

#Require pry for debugging
require 'pry'

#Method to get user input
def output_message msg
  puts "***** #{msg} *****"
end

#Method to handle operations
def operate num1, num2, oper

  case oper
  when 1
    result = num1.to_i + num2.to_i
    output_message "The solution is #{result}"
  when 2
    result = num1.to_i - num2.to_i
    output_message "The solution is #{result}"
  when 3
    result = num1.to_i * num2.to_i
    output_message "The solution is #{result}"
  when 4
    begin
      result = num1.to_f / num2.to_f
      output_message "The solution is #{result}"
    rescue 
      output_message "Error: Cannot Divide by 0!"
    end
  end

end

#variable to see if the user wants to continue
continue = true

while continue == true

  #Get the user inputs for first and second numbers

  output_message "Please enter the first number."
  number1 = gets.chomp

  #Get second num
  output_message "Please enter the second number."
  number2 = gets.chomp

  #Get operator
  output_message "Please enter 1 for addition, 2 for subtraction, 3 for multiplication, 4 for division"
  operator = gets.chomp.to_i

  #Perform the operation
  operate(number1, number2, operator)

  #Check if the user wants to continue
  output_message "Enter 0 to continue, or enter any other number to quit"
  continue = gets.chomp
  if continue == "0" 
    continue = true 
  else 
    continue = false
    output_message "Thanks for calculating! Exiting now" 
  end

end
