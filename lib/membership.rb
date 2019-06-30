class Membership
  attr_accessor :cost

  @@all = []

  def initialize(cost)
    @cost = cost
    Membership.all << self
  end

  def self.all
    @@all
  end

end
