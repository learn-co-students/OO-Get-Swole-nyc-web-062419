class Membership
  attr_reader :cost
  attr_accessor :lifter, :gym

  @@all = []

  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym
    @lifter = lifter
    Membership.all << self
  end

  def self.all
    @@all
  end

end
