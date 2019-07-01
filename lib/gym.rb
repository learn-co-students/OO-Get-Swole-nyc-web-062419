class Gym
  attr_reader :name
  attr_accessor :memberships, :lifters, :lifter_names, :group_lift_total

  @@all = []

  def initialize(name)
    @name = name
    @memberships = []
    @lifters = []
    @lifter_names = []
    @group_lift_total = 0
  end

  def gym_lift_total
    group_lift_total / memberships.length
  end

  def self.all
    @@all
  end 

end
