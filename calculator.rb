def select_mode mode
  if mode == "bm"
    bmi_mode_metric
  elsif mode == "bi"
    bmi_mode_imperial
  elsif mode == "b"
    basic_mode
  else
    advanced_mode
  end
end

def bmi_mode_metric
  puts "What is your weight?"
  weight = gets.chomp.to_f
  puts "What is your height?"
  height = gets.chomp.to_f

  bmi = weight / (height)*(height)
  puts bmi
end

def bmi_mode_imperial
  puts "What is your weigth in pounds?"
  weight = gets.chomp.to_f
  puts "What is your height in inches?"
  height = gets.chomp.to_f

  bmi_imp = (weight / (height) * (height)) * 703
  puts bmi_imp

end

#Trip Mode
def trip_mode

puts "What is the distance?"
distance = gets.chomp.to_f
puts "What is your mpg?"
mpg = gets.chomp.to_f
puts "What is your cost per gallon?"
cost = gets.chomp.to_f
puts = "What is your speed?"
speed = gets.chomp.to_f


end



#Basic mode
def basic_mode
  puts "Basic mode"

  #Prompt for function
  puts "What operation would you like to perform?[a]ddition, [s]ubtraction, [m]ultiplcation or [d]ivision? BMI Calculator[b]"
  operator = gets.chomp

  puts "Enter two numbers"
  #Prompt for num1
  num1 = gets.chomp.to_f
  #Prompt for num2
  num2 = gets.chomp.to_f

  #Addition
  def addition num1, num2
    puts  "#{num1 + num2}"
  end

  #Subtract
  def subtract num1, num2
    puts  "#{num1 - num2}"
  end

  #Multiply
  def multiply num1, num2
    puts  "#{num1 * num2}"
  end

  #Divide
  def divide num1, num2
    puts  "#{num1 / num2}"
  end

  case operator
  when "a"
    addition(num1, num2)
  when "s"
    subtract(num1, num2)
  when "m"
    multiply(num1, num2)
  when "d"
    divide(num1, num2)
  end

end

#Advanced mode
def advanced_mode
  puts "Advanced Mode"
  puts "Would you like to work out the [p]ower or [s]qaureRoot?"
  method = gets.chomp

  def power num1, num2
    puts num1 ** num2
  end

  def square_root num
    puts Math.sqrt(num)
  end

  if method == "p"
    #Prompt for num1
    puts "First number"
    num1 = gets.chomp.to_f
    #Prompt for num2
    puts "Second number"
    num2 = gets.chomp.to_f

    power(num1, num2)

  elsif method == "s"
    puts "Enter a number you would like to find the square_root of"
    num = gets.chomp.to_f
    square_root num
  end

end

#Prompt for mode: Basic or Advanced
puts "Select mode: Basic[b] or Advanced[a] or BMI[bm] or BMI[bi]"
mode = gets.chomp

select_mode mode
