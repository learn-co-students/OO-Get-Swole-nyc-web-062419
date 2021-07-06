class Membership
  attr_reader :cost, :lifter, :gym

  @@all = []

  def initialize(lifter, gym, cost)
    @cost = cost
    @gym = gym 
    @lifter = lifter
    @@all << self 
    lifter.memberships << self 
    gym.memberships << self
    lifter.gym_costs += cost 
    lifter.gyms << gym.name
    gym.lifters << lifter.name 
    gym.group_lift_total += lifter.lift_total
  end

  def self.all
    @@all
  end 


end
