

class Membership

  @@all =[]

  def self.all
    @@all
  end

  attr_reader :cost, :gym, :lifter

  def initialize(cost, gym, lifter)

    @cost = cost
    @gym = gym
    @lifter = lifter

    Membership.all << self

  end

end
