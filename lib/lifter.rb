class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end


  def my_memberships
    Membership.all.select do |memberships|
      memberships.lifter == self
    end
  end

  def my_gym
    my_memberships.map do |memberships|
      memberships.gym
    end
  end

  def self.lift_total
    Lifter.all.map do |lifters|
      lifters.lift_total
    end.sum
  end

  def self.lift_average
    lift_total / @@all.count
  end

  def membership_cost
    my_memberships.map do |memberships|
      memberships.cost
    end.sum
  end

  def sign_up(cost,gym)
    Membership.new(cost, self, gym)
  end





end ##class end
