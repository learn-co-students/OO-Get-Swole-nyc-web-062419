# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

gym1 = Gym.new("Liftopia")
gym2 = Gym.new("proteeeeeen")
gym3 = Gym.new("Neighbor's basement")

lifter1 = Lifter.new("Eric", 200)
lifter2 = Lifter.new("Alex", 100)
lifter3 = Lifter.new("James", 150)

membership1 = Membership.new(20, lifter1, gym1)
membership2 = Membership.new(25, lifter2, gym1)
membership3 = Membership.new(30, lifter3, gym3)

binding.pry

puts "Gains!"
