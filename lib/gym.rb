class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Gym.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def all_lifters
    self.memberships.collect {|membership| membership.lifter}
  end

  def all_lifter_names
    self.all_lifters.collect {|lifter| lifter.name}
  end

  def combined_lifts
    all_lifts = self.all_lifters.collect {|lifter| lifter.lift_total}
    all_lifts.inject {|sum, num| sum + num}
  end

end
