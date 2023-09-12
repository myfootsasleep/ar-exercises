require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@stores1 = Store.find_by(id: 1 )
@stores1.name = "Yaletown"
@stores1.save
@stores2 = Store.find_by(id: 2 )

puts @stores1.name