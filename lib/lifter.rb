class Lifter
  attr_reader :name, :lift_total
  
  
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @membership = []
    @gyms = []
    @@all << self
  end

  #<!-- - Get a list of all lifters -->
  def self.all
    @@all
  end
  
  #- Get a list of all the memberships that a specific lifter has
  def membership_list
    self.membership
  end
  
  #<!-- - Get a list of all the gyms that a specific lifter has memberships to -->

  def gym_list
    self.gyms
  end

  #- Get the average lift total of all lifters
  def self.avg_lift
    Lifter.all.map do |lifter|
      lifter.lift_total 
    end.sum.to_f / Lifter.all.size
  end

  #- Get the total cost of a specific lifter's gym memberships
  def total_cost
    self.memberships.map do |membership|
      membership.cost
    end.sum
  end

  #- Given a gym and a membership cost, sign a specific lifter up for a new gym
  def new_gym(gym, cost)#ymca
    ymca_membership = Membership.new(cost) 
    self.membership << ymca_membership #pushing new membership into instance(self) of memberships
    self.gyms << gym #ymca pushed into instance(self) of gyms
    gym.lifters << self #pushing self into this gyms instance array lifters
    gym.memberships << ymca_membership #pushing new membership into this gyms instance array of memberships
  end


  

  #  - Get the combined lift total of every lifter that has a membership to that gym

  def lift_total

  end

end
