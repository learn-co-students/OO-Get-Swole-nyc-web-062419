class Membership
  attr_reader :cost, :member, :gym
  @@all =  []
  def initialize(cost,member,gym)
    @cost = cost
    @member = member
    @gym = gym
    Membership.all << self
  end
  def self.all
    @@all
  end
end


