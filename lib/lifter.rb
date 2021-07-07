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

  def membership
    #gets membership for specific lifter
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gym
    #gets all gym for specific lifter
    self.membership.map do |membership|
      membership.gym
    end
  end

  def self.class_lift_total
    #displays lift amounts for each lifter
    Lifter.all.map do |lifter|
      lifter.lift_total
    end
  end

  def self.average_lift_total
    self.class_lift_total.sum /  self.class_lift_total.length.to_f
  end

  def membership_cost
    #gets total cost of memberships
    self.membership.map do |membership|
    membership.cost
    end.sum
  end

  def new_membership(cost,gym)
    Membership.new(cost,gym,self)
    #assigns new membership to lifter
  end
end
