require 'pry'

class Lifter

  attr_reader :name, :lift_total, :gym

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
  end

  def self.all 
  	# Get a list of all lifters
  	@@all
  end

  def self.average_lift_total
  	# Get the average lift total of all lifters
  	lift_total_array = Lifter.all.map do |lifter_instance|
  		lifter_instance.lift_total 
  	end
  	lift_total_array.inject(0.0) {|sum, element| sum + element} / array.size
  end

  def gym_sign_up(gym, cost)
  	# Given a gym and a membership cost, sign a specific lifter up for a new gym
  	Membership.new(self, gym, cost)
  end

  def memberships
  	# Get a list of all the memberships that a specific lifter has
  	Membership.all.select do |membership_instance|
  		membership_instance.lifter == self
  	end
  end

  def gyms 
  	# Get a list of all the gyms that a specific lifter has memberships to
  	memberships.map do |membership|
  		membership.gym
  	end
  end

  def total_membership_cost
  	# Get the total cost of a specific lifter's gym memberships
  	cost_array = Membership.all.map do |membership_instance|
  		membership_instance.cost 
  	end
  	cost_array.inject(0.0) {|sum, element| sum + element} / cost_array.size
  end

end



