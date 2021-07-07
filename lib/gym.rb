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

  def my_memberships
    Membership.all.select do |memberships|
      memberships.gym == self
    end
  end

  def my_lifters
    my_memberships.map do |membership|
      membership.lifter
    end
  end

def lift_total
  my_lifters.map do |lifters|
    lifters.lift_total
  end.sum 
end


end
