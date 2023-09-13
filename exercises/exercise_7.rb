require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Enter a store name: "
store_name = gets.chomp
print "Enter store revenue: "
store_revenue = gets.chomp
# print "Does this store carry mens apparel: true/false"
# mens_app = gets.chomp.downcase == 'true'
# print "Does this store carry womens apparel: true/false"
# womens_app = gets.chomp.downcase == 'true'

# new_store = Store.new(name: store_name, annual_revenue: store_revenue, mens_apparel: mens_app, womens_apparel: womens_app)
new_store = Store.new(name: store_name, annual_revenue: store_revenue)
if new_store.save
  puts "Store created successfully!"
else
  puts "Failed to create the store. Errors:"
  new_store.errors.full_messages.each { |message| puts message }
end