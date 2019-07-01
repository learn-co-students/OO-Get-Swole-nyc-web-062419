require 'pry'

class Membership
  
  attr_reader :cost
  attr_accessor :gym, :lifter

  @@all = []

  def initialize(lifter, gym, cost)
  	@lifter = lifter
  	@gym = gym
    @cost = cost
    Membership.all << self
  end

  def self.all 
  	@@all 
  end

end
