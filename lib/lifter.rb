class Lifter
  attr_reader :name, :lift_total, :gyms, :memberships

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @memberships = []
    @gyms = []
    @@all << self
  end

  def join_gym(gym, memCost)
    #sign up for gym
    newMem = Membership.new(memCost)
    gym.memberships << newMem
    self.memberships << newMem
    gym.lifters << self
    self.gyms << gym
  end

  def total_cost
    total = 0
    self.memberships.each { |membership| total += membership.cost }
    total
  end

  def self.average_lift
    total = 0.0
    Lifter.all.each { |lifter| total += lifter.lift_total }
    return total / Lifter.count_lifters
  end

  def self.count_lifters
    Lifter.all.count
  end

  def self.all
    @@all
  end
end
