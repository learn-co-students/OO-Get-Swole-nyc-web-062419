class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    self.memberships.map do |lifter|
      lifter.lifter
    end
  end

  def lifters_name
    self.lifters.map do |lifters|
      lifters.name
    end
  end

  def gym_lift_total
    self.lifters.map do |lifters|
    lifters.lift_total 
    end.sum
  end

end

