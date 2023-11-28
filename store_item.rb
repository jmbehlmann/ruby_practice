# A. Use the terminal to create a new folder in your Actualize folder called practice-ruby.
# B. Create a new file in the folder called store_item.rb and open it in your text editor.
# C. Use hashes with symbols to represent the following scenario:
# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
# Bonus: Read more about Ruby array and hash methods. Explore using different methods in your code.
# https://ruby-doc.org/core/Array.html
# https://ruby-doc.org/core/Hash.html
# https://ruby-doc.org/core/Symbol.html
# Bonus:
# Try to represent the same store items using a class!

plant1 = {name: "pothos", size: "small", price: 5}
plant2 = {name: "jade", size: "medium", price: 10}
plant3 = {:name => "euphorbia", :size => "large", :price => 20}

p plant1[:name]
p plant2[:price]
p plant3

# Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.
# c) Use the attr_writer method to change a value
# Bonus: Read more about Ruby classes: https://ruby-doc.com/core/Class.html

class Plant
  attr_reader :name, :size, :price
  attr_writer :name, :size, :price

  def initialize(input_options)
    @name = input_options[:name]
    @size = input_options[:size]
    @price = input_options[:price]
  end
end

plant1 = Plant.new(name: "pothos", size: "small", price: 5)
plant2 = Plant.new(name: "jade", size: "medium", price: 10)
plant3 = Plant.new(name: "euphorbia", size: "large", price: 20)

p plant3
p plant1.name
p plant1.size
p plant1.price
plant1.price = 6
p plant1.price
