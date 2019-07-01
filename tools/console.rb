# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here


gym1= Gym.new("Yolked Bodies Gym") # $30/month
gym2 = Gym.new("Muscles Marinara") # $40/month
gym3 = Gym.new("Big Body Gym & Fitness") # $25/month
gym4 = Gym.new("The Pump House") # $50/month
gym5 = Gym.new("Feathers Spa & Fitness") # $75/month


lifter1 = Lifter.new("Johnny Biceps", 250)
lifter2 = Lifter.new("Rocky Balboa", 264)
lifter3 = Lifter.new("Arnie Schwarz", 305)
lifter4 = Lifter.new("Lisa Enyo", 245)
lifter5 = Lifter.new("Mario Maniac", 315)
lifter6 = Lifter.new("Juno Bellona", 236)
lifter7 = Lifter.new("Danny Bad Boy", 257)
lifter8 = Lifter.new("Pitbull Andy", 268)
lifter9 = Lifter.new("Nasty Nate", 223)
lifter10 = Lifter.new("The Rock", 357)
lifter11 = Lifter.new("Beef Jerky", 334)
lifter12 = Lifter.new("Gabrielle Guns", 270)
lifter13 = Lifter.new("Mad Dog Mike", 220)
lifter14 = Lifter.new("Chris Crank", 285)
lifter15 = Lifter.new("Freddy the Freak", 302)
lifter16 = Lifter.new("Perla Protien", 260)
lifter17 = Lifter.new("Patty Pamper", 100)
lifter18 = Lifter.new("Sarah Sublime", 106)
lifter19 = Lifter.new("Ronny Recline", 140)
lifter20 = Lifter.new("Lenny Loaf", 90)

membership1 = Membership.new(gym1,lifter2,30)
membership2 = Membership.new(gym3,lifter3,25)
membership3 = Membership.new(gym2,lifter2,40)
membership4 = Membership.new(gym4,lifter1,50)
membership5 = Membership.new(gym1,lifter3,30)
membership6 = Membership.new(gym5,lifter2,75)
membership7 = Membership.new(gym3,lifter4,25)
membership8 = Membership.new(gym2,lifter6,40)
membership9 = Membership.new(gym4,lifter5,50)
membership10 = Membership.new(gym5,lifter4,75)
membership11 = Membership.new(gym1,lifter7,30)
membership12 = Membership.new(gym2,lifter7,40)
membership13 = Membership.new(gym5,lifter6,75)
membership14 = Membership.new(gym1,lifter8,30)
membership15 = Membership.new(gym3,lifter9,25)
membership16 = Membership.new(gym4,lifter10,50)
membership17 = Membership.new(gym5,lifter20,75)
membership18 = Membership.new(gym1,lifter11,30)
membership19 = Membership.new(gym4,lifter12,50)
membership20 = Membership.new(gym3,lifter12,25)
membership21 = Membership.new(gym2,lifter13,40)
membership22 = Membership.new(gym3,lifter14,25)
membership23 = Membership.new(gym5,lifter17,75)
membership24 = Membership.new(gym1,lifter15,30)
membership25 = Membership.new(gym5,lifter19,75)
membership26 = Membership.new(gym2,lifter16,40)
membership27 = Membership.new(gym2,lifter18,40)
membership28 = Membership.new(gym1,lifter19,30)
membership29 = Membership.new(gym4,lifter19,50)
membership30 = Membership.new(gym2,lifter20,40)




binding.pry

puts "Gains!"
