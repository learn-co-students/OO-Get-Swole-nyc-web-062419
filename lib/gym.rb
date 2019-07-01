class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Gym.all << self
  end

  def our_memberships
    Membership.all.select do |membership_instances|
    membership_instances.gym == self
    end
  end

  def our_lifters
    our_memberships.map do |lifter_objects|
        lifter_objects.lifter
    end
  end

  def our_lifters_names
    our_lifters.map do |lifter_objects|
        lifter_objects.name
    end
  end

  def total_combined_lifts
    our_lifters.map do |lifter_objects|
      lifter_objects.lift_total
    end.inject(:+)
  end

  def gym_average_lift
    total_combined_lifts / our_lifters.size
  end

  def self.all
    @@all
  end

end
