# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
ben = Lifter.new('Ben', 30)
yosef = Lifter.new('Yosef', 20)

blink = Gym.new('blink')
ymca = Gym.new('ymca')






binding.pry

puts "Gains!"
