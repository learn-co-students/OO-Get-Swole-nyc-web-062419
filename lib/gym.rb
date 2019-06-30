

class Gym


  # * General Init

  @@all =[]

  def self.all
    @@all
  end

  attr_reader :name

  def initialize(name)

    @name = name

    Gym.all << self

  end



  # * Pointers

  def memberships

    Membership.all.select{|membership| membership.gym == self}

  end

  def lifters

    self.memberships.collect{|membership| membership.lifter}

  end



  # * Contents

  def names_of_lifters

    # ? Not sure whether it's better to eliminate duplicate names.

    self.lifters.collect{|lifter| lifter.name}.uniq

  end

  def total_lifts_of_members

    self.lifters.inject(0){|sum, lifter| sum + lifter.lift_total}

  end

end
