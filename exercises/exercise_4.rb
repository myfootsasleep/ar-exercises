require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: "224000",womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: "1900000 ", mens_apparel: true)
yaletown = Store.create(name: "Yaletown", annual_revenue: "430000", mens_apparel: true, womens_apparel: true)

@mens_store = Store.where(mens_apparel: true)

puts "Men's Apparel Stores: "
@mens_store.each do |store|
  puts "Name: #{store.name}, Annual Revenue: $#{store.annual_revenue}"
end

@womens_store = Store.where(womens_apparel: true, annual_revenue: 0..1000000)
puts "Womens Apparel Stores that make less than $1M: "
@womens_store.each do |store|
  puts "Name: #{store.name}, Anneual Revenue: $#{store.annual_revenue}"
end
