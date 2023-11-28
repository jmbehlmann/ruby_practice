#  Use the terminal to create a new file in your practice-ruby folder called inheritance_example.rb and open it in your text editor.
# • Copy the Car and Bicycle class into your file: https://gist.github.com/peterxjang/e9b69b4de36b2c41ef4b
# • Use inheritance to DRY up the classes. Note - a car is NOT in a type of bicycle, and a bicycle is NOT a type of car!
# • To test it, create a bicycle and car instance from your newly modified classes (you can create them at the bottom of your file). First, have them accelerate. Then, make sure a bike can “Ring ring!” and a car “Beeeeeeep!”
# Bonus: Read more about inheritance and object hierarchy in Ruby here: https://www.leighhalliday.com/object-hierarchy-in-ruby (edited)

class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
# p bike
# car = Car.new
# p car
p bike.ring_bell
# p car.honk_horn
