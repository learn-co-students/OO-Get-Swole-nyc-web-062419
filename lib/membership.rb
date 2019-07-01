class Membership
  
  attr_accessor :gym, :lifter
  attr_reader :cost

  @@all = []

  def initialize(gym,lifter,cost)
    @gym = gym
    @lifter = lifter 
    @cost = cost
    Membership.all << self
  end
  

  def self.all
    @@all
  end

end
