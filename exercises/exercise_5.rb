require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_sum = Store.sum(:annual_revenue)
puts total_sum
average_sum = Store.sum(:annual_revenue)/Store.count()
puts average_sum
stores_over_1m = Store.where('annual_revenue >= ?', 1_000_000).count
puts stores_over_1m

puts "#{@store1} from blah"