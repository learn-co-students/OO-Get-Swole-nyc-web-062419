# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new('Anthony',140)
lifter2 = Lifter.new('Jay',150)
lifter3 = Lifter.new('Kevin',180)
lifter4 = Lifter.new('Jenny',100)


gym1 = Gym.new("Planet Fitness")
gym2 = Gym.new("Blink")
gym3 = Gym.new("Equinox")

membership1 = Membership.new(25,gym1,lifter1)
membership2 = Membership.new(20,gym2,lifter2)
membership3 = Membership.new(20,gym2,lifter3)
membership4 = Membership.new(20,gym2,lifter1)
membership5 = Membership.new(100,gym3,lifter4)


binding.pry

puts "Gains!"
