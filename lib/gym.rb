class Gym
  attr_accessor :name, :memberships, :lifters

  @@all = []

  def initialize(name)
    @name = name
    @memberships = []
    @lifters = []
    Gym.all << self
  end

  def self.all
    # 1 >>>>>>>> get a list of all gyms
    @@all
  end

  def member_names
    self.memberships.map do |member|
      member.name
    end
  end

  def total_lift_of_all_members
    self.lifters.map do |member|
      member.lift_total
    end.inject(0){|sum,x| sum + x }
  end

end
