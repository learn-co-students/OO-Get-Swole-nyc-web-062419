class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    Gym.all.select {|gym| gym.lifters.include?(self)}
  end

  def average_lift
    lift_totals = self.all.collect {|lifter| lifter.lift_total}
    lift_totals.inject {|sum, num| sum + num} / self.all.count
  end

  def total_cost
    costs = self.memberships.collect {|membership| membership.cost}
    costs.inject {|sum, num| sum + num}
  end

  def get_membership (gym, cost)
    membership = Membership.new(cost)
    membership.lifter = self
    membership.gym = gym
  end
end
