# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Dwayne", 500)
lifter2 = Lifter.new("Brie", 400)
lifter3 = Lifter.new("John", 480)

gym1 = Gym.new("Archie's")
gym1 = Gym.new("Murdock's")

membership1 = ()


binding.pry

puts "Gains!"
