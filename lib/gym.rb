class Gym
  attr_reader :name, :memberships, :lifters, :liftersNames

  @@all = []

  def initialize(name)
    @name = name
    @memberships = []
    @lifters = []
    Gym.all << self
  end

  def lifter_names
    arr = Lifter.all.select { |lifter| lifter.gyms.include?(self) }
    arr.map { |lifter| lifter.name }
  end

  def gyms_lift_total
    total = 0
    arr = Lifter.all.select { |lifter| lifter.gyms.include?(self) }
    arr.each { |lifter| total += lifter.lift_total }
    total
  end

  def self.all
    @@all
  end
end
