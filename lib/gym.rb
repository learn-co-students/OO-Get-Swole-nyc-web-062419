require 'pry'

class Gym
  
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Gym.all << self
  end

  def self.all 
  	# Get a list of all gyms
  	@@all 
  end 

  def memberships
  	# Get a list of all memberships at a specific gym
  	Membership.all.select do |membership_instance|
  		membership_instance.gym == self 
  	end
  end

   def lifters
  	# Get a list of all the lifters that have a membership to a specific gym
  	memberships.map do |membership|
  		membership.lifter
  	end
  end

  def lifter_name
  	# Get a list of the names of all lifters that have a membership to that gym
  	lifters.map do |lifter|
  		lifter.name
  	end
  end

  def combined_lift_total 
  	# Get the combined lift total of every lifter has a membership to that gym
  	lifters.map do |membership|
  		membership.lift_total
  	end.inject(0.0) {|sum, element| sum + element}
  end

end

