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

p plant1
p plant2
p plant3

class Plants
  def initialize(name, size, price)
    attr_reader :name, :size, :price
    attr_writer :name, :size, :price

    @name = name
    @size = size
    @price = price
  end
end

plant1 = Plants.new("pothos", "small", 5)
plant2 = Plants.new("jade", "medium", 10)
plant3 = Plants.new("euphorbia", "large", 20)

p plant1
p plant2
p plant3

p plant1.name
