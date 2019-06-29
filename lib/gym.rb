class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @lifters = []
    Gym.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def all_lifters
    self.lifters.collect {|lifter| lifter.name}
  end

  def combined_lifts
    all_lifts = self.lifters.collect {|lifter| lifter.lift_total}
    all_lifts.inject {|sum, num| sum + num}
  end

end
