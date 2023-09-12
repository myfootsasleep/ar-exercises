require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

@stores3 = Store.find_by(id: 3)
@stores3.destroy

store_count = Store.count

puts "Number of stores in the database: #{store_count}"