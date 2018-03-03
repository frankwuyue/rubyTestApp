# # method is something that performs an action for us

# # puts "Hello World" + "Hossian"
# # hello = "Hello World!!"
# # puts hello

# # def say_hello(anything)
# #     puts anything
# # end

# # say_hello "I am what I am"

# # firstName = gets.chomp
# # lastName = gets.chomp


# # puts "Welcome to #{firstName} #{lastName}"

# # puts "The length of my first name is #{firstName.length}, and the length of my last name is #{lastName.length}"

# # puts "the reverse of my name is #{firstName.reverse}"
# def multiply(firstNum,secondNum)
#     firstNum.to_f*secondNum.to_f
# end

# def divide(firstNum,secondNum)
#     firstNum.to_f/secondNum.to_f
# end

# def substract(firstNum,secondNum)
#     firstNum.to_f-secondNum.to_f
# end

# def add(firstNum,secondNum)
#     firstNum.to_f+secondNum.to_f
# end

# def mod(firstNum,secondNum)
#     firstNum.to_f%secondNum.to_f
# end
# # firstNum = gets.chomp
# # secondNum = gets.chomp

# # puts "ths first number multiplied by the second num is #{firstNum.to_i*secondNum.to_i}"

# puts "what do you want to do"
# puts "1) multiply 2) divide 3) substact 4) add 5) mod"

# input = gets.chomp

# puts "input the first number"
# input1 = gets.chomp
# puts "input the seconde number"
# input2 = gets.chomp

# if input.to_i == 1
#     puts "the first number #{input1} multiplied by the second number #{input2} is #{multiply(input1,input2)}"
# elsif input.to_i == 2
#     puts "the first number #{input1} divided by the second number #{input2} is #{divide(input1,input2)}"
# elsif input.to_i == 3
#     puts "the first number #{input1} substracted by the second number #{input2} is #{substract(input1,input2)}"
# elsif input.to_i == 4
#     puts "the first number #{input1} added by the second number #{input2} is #{add(input1,input2)}"
# elsif input.to_i == 5
#     puts "the first number #{input1} modded by the second number #{input2} is #{mod(input1,input2)}"
# else 
#     puts "invalid choice"
# end

# dail_book={
# 	"newyork" => "212",
# 	"neworleans" => "232",
# 	"newoooee" => "3232"
# }

# def get_city_name(somehash)
# 	somehash.each{|k,v| puts k}
# end

# def get_area_code(somehash,city)
# 	somehash[city]
# end

# loop do
# 	puts "Do you want to lookup a city name(Y/N)?"
# 	answer = gets.chomp
# 	if answer != "Y"
# 		break
# 	end
# 	get_city_name(dail_book)
	
# 	puts "Enter your selection"
# 	prompt = gets.chomp
# 	if dail_book.include?(prompt)
# 		puts "the area code for #{prompt} is #{get_area_code(dail_book,prompt)}."
# 	else
# 		puts "The city is not in the dictionary"
# 	end
# end

module Destructable
	def destroy(anyObject)
		puts "I will destroy the object"
	end
end

class User
	include Destructable
	attr_accessor :name,:email
	def initialize(name,email)
		@name = name
		@email = email
	end
	
	def run
		puts "I am running"
	end

end

class Buyer < User
	def run
		puts "I am a buyer and I am running"
	end
end

class Admin < User
	def run
		puts "I am an admin and I am running"
	end
end

user = User.new("John","wuyuefrank@gmail.com")
user1 = User.new("Jay","aaaa@bbb.com")
puts user.name
puts user.email
user.name = "Amy"
puts user.name

buyer = Buyer.new("Frank","wuyuefrank@yahoo.com")
admin = Admin.new("Stock","stock@yahoo.com")

puts buyer.run
puts admin.run

puts buyer.destroy("dddd")

