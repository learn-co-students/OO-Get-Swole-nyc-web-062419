# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Kyle", 5000)
lifter2 = Lifter.new("Jebediah", 200)
lifter3 = Lifter.new("Copernicus", 100)

gym1 = Gym.new("Planet Fitin Dis Pizza In My Mouf")
gym2 = Gym.new("The James")

membership1 = Membership.new(300, lifter1, gym1)
membership4 = Membership.new(200, lifter1, gym2)
membership2 = Membership.new(500, lifter2, gym1)
membership3 = Membership.new(1000, lifter3, gym2)

binding.pry

puts "Gains!"
 