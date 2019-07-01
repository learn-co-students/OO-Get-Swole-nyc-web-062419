class Gym
  attr_accessor :lifters, :memberships
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def memberships
    Membership.all.select do |member_instance|
      member_instance.gym == self
    end
  end

  def lifters
    self.memberships.collect do |member_instance|
      member_instance.lifter
    end
  end

  def gym_lifters
    self.memberships.collect do |member_instance|
      member_instance.lifter
    end
  end

  def gym_lifters_lift_totals
    self.lifters.collect do |lifters|
      lifters.lift_total
    end.sum
  end

  def self.all
    @@all
  end

end 
