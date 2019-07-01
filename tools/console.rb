# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

awl = Lifter.new("Awl", 444)
bar = Lifter.new("Bar", 475)
cru = Lifter.new("Cru", 410)
dym = Lifter.new("Dym", 332)
ele = Lifter.new("Ele", 290)
frk = Lifter.new("Frk", 777)
jon = Lifter.new("Jon", 512)
mat = Lifter.new("Mat", 555)
tre = Lifter.new("Tre", 666)
war = Lifter.new("War", 500)

gym1 = Gym.new("Gym 1")
gym2 = Gym.new("Gym 2")
gym3 = Gym.new("Gym 3")
gym4 = Gym.new("Gym 4")

mem1 = Membership.new(war, gym1, 50)
mem2 = Membership.new(war, gym2, 75)
mem3 = Membership.new(war, gym3, 100)
mem4 = Membership.new(war, gym4, 125)
mem5 = Membership.new(frk, gym1, 50)
mem6 = Membership.new(jon, gym2, 75)
mem7 = Membership.new(ele, gym3, 100)
mem8 = Membership.new(cru, gym4, 125)



binding.pry

puts "Gains!"
