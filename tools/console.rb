# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
gym1 = Gym.new("Buff Town")
gym2 = Gym.new("Sweaty Pits")
gym3 = Gym.new("Pumped!")

lifter1 = Lifter.new("Arnold", 450)
lifter2 = Lifter.new("Goku", 9001)
lifter3 = Lifter.new("Shinji", 90)

gym1.recruit_member(50,lifter1)
gym1.recruit_member(50,lifter2)
gym2.recruit_member(50,lifter2)



binding.pry

puts "Gains!"
