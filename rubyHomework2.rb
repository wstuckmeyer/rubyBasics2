#1

class Calculator
	attr_accessor :num1
	attr_accessor :num2
	def initialize(num1, num2)
		@num1 = num1
		@num2 = num2
	end
	def add()
		puts num1+num2
	end
	def sub()
		puts num1-num2
	end
	def mul()
		puts num1*num2
	end
	def div()
		puts num1/num2
	end
end

myNumbers = Calculator.new(12, 2)
myNumbers.add

#Or if you want it to always accept num numbers
class Calc
	def initialize
	end
	def add(num1, num2)
		puts num1+num2
	end
	def sub(num1, num2)
		puts num1-num2
	end
	def mul(num1, num2)
		puts num1*num2
	end
	def div(num1, num2)
		puts num1/num2
	end
end

calc2 = Calc.new
calc2.mul(5,3)

#2

class Elevator
	def initialize
		@floor = 1
	end
	def go_up
		if @floor==12
			puts "You can't go that high up"
		else
			@floor = @floor+1
		end
	end
	def go_down
		if @floor ==1
			puts "Not going down there"
		else	
		@floor = @floor-1
		end
	end
	def cheery_greeting
		puts "Welcome to floor #{@floor}"
	end
end


tower = Elevator.new
tower.go_down
puts tower.inspect
tower.cheery_greeting

#Extra Challenges

#create an array
people = ['Bob', 'Linda', 'Tina', 'Louise', 'Gene']

#create a method that takes in an array and a number

def rotate(array, number)
	#put the strings we want to move into a new string
	newArray = array.shift
	#subtract the number
	number-=1
	#push the strings to the back of the array
	array.push(newArray)
	#keep doing this until our number is 0
	rotate(array, number) unless number ==0
end


rotate(people, 3)
puts people

#2

def factorial(n)
  if n == 0
    return 1
  else 
    return n*factorial(n-1)
  end
end

factorial(6)








