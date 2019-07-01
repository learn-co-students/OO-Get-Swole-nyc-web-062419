class Gym
  attr_reader :name, :memberships, :lifters

  @@all = []

  def initialize(name)
    @name = name
    @memberships = []
    @lifters = []
    @@all << self
  end

  # - Get a list of all gyms
  def self.all
    @@all
  end

  #-- - Get a list of the names of all lifters that have a membership to that gym -->

 

  #- Get a list of the names of all lifters that have a membership to that gym
  def list_of_names
    self.lifters.map do |member_instance|
      member_instance.name
    end #returns new array with list of names
  end

  #- Get the combined lift total of every lifter that has a membership to that gym

  def lifter_list
    self.lifters.map do |member_instance|
      member_instance.lift_total
    end.sum
  end

end
