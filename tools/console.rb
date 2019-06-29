# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Dwayne", 500)
lifter2 = Lifter.new("Brie", 400)
lifter3 = Lifter.new("John", 485)

gym1 = Gym.new("Archie's")
gym2 = Gym.new("Murdock's")

membership1 = Membership.new(105, gym1, lifter1)
membership2 = Membership.new(85, gym2, lifter1)
membership3 = Membership.new(85, gym2, lifter2)
membership4 = Membership.new(85, gym2, lifter3)


binding.pry

puts "Gains!"
