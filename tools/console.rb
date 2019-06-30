# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'


gym1 = Gym.new("Gold's")
gym2 = Gym.new("YMCA")

lifter1 = Lifter.new("Rocky", 5000)
lifter2 = Lifter.new("Creed", 8000)
lifter3 = Lifter.new("Zangief", 10000)
lifter4 = Lifter.new("The Mountain", 14000)

membership1 = Membership.new(600, gym1, lifter1)
membership2 = Membership.new(600, gym1, lifter2)
membership3 = Membership.new(600, gym1, lifter4)
membership4 = Membership.new(400, gym2, lifter1)
membership5 = Membership.new(400, gym2, lifter3)
membership6 = Membership.new(400, gym2, lifter4)


puts Gym.all.length                         # 2
puts Lifter.all.length                      # 4
puts Membership.all.length                  # 6

puts "\n"

puts lifter1.memberships.length             # 2
puts lifter3.memberships.length             # 1

puts "\n"

puts lifter2.gyms.length                    # 1
puts lifter4.gyms.length                    # 2

puts "\n"

puts gym1.memberships.length                # 3

puts "\n"

puts gym2.lifters.length                    # 3

puts "\n"

puts gym1.names_of_lifters                  # Rocky, Creed, Mountain
puts gym2.names_of_lifters                  # Rocky, Zangief, Mountain

puts "\n"

puts gym1.total_lifts_of_members            # 27000
puts gym2.total_lifts_of_members            # 29000

puts "\n"

puts Lifter.average_lift_total              # 9250.0

puts "\n"

puts lifter1.total_gym_cost                 # 1000
puts lifter2.total_gym_cost                 # 600
puts lifter3.total_gym_cost                 # 400
puts lifter4.total_gym_cost                 # 1000

puts "\n"

lifter2.this_lifter_signs_up(gym2, 300)
puts gym2.lifters.length                    # 4

lifter3.this_lifter_signs_up(gym2, 400)
puts lifter3.total_gym_cost                 # 800

puts Membership.all.length                  # 8





binding.pry

puts "Gains!"
