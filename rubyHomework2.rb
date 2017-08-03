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











