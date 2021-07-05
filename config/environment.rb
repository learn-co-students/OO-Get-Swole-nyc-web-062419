require 'pry'
require_relative '../lib/gym'
require_relative '../lib/lifter'
require_relative '../lib/membership'

#initialize lifters
lifter1 = Lifter.new("lifter1", 200)
lifter2 = Lifter.new("lifter2", 300)
lifter3 = Lifter.new("lifter3", 645)

#initialize 
blink = Gym.new("Blink")
crunch = Gym.new("Crunch")
planet_fitness = Gym.new("Planet Fitness")

#initialize memberships
lifter1.join_gym(70, planet_fitness)
lifter1.join_gym(50, crunch)
lifter2.join_gym(70, crunch)
lifter3.join_gym(10, blink)

binding.pry
puts "ohakdjfhkjsh"