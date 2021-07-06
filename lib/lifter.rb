class Lifter
  attr_accessor :name, :lift_total, :gyms, :gym_costs, :memberships, :group_lift_total, :all

  @@all = []
  @@grand_lift_total = 0

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @gyms = []
    @memberships = []
    @gym_costs =  0
    @@grand_lift_total += lift_total
    @@all << self
  end

  def join_gym(gym, cost)
    Membership.new(self, gym, cost)
  end 

  def self.all
    @@all
  end

  def self.average_lift
    @@grand_lift_total / all.length
  end 
end
