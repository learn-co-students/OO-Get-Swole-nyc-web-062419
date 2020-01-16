class Lifter
  attr_accessor :memberships, :gyms, :lift_total
  attr_reader :name
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
    Membership.all.select do |member_instance|
      member_instance.lifter == self
    end
  end

  def gyms
    self.memberships.collect do |member_instance|
      member_instance.gym
    end
  end

  def self.avg_lift_total
    Lifter.all.collect do |lifter_instance|
      lifter_instance.lift_total
    end.sum / Lifter.all.length
  end

  def lifter_membership_costs
    self.memberships.collect do |member_instance|
       member_instance.cost
    end.sum
  end

  def gym_sign_up(gym, cost)
    Membership.new(cost, self, gym)
  end

end
 