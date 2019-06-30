

class Lifter


  # * General Init

  @@all =[]

  def self.all
    @@all
  end

  attr_reader :name, :lift_total

  def initialize(name, lift_total)

    @name = name
    @lift_total = lift_total

    Lifter.all << self

  end



  # * Pointers

  def memberships

    Membership.all.select{|membership| membership.lifter == self}

  end

  def gyms

    self.memberships.collect{|membership| membership.gym}.uniq

  end



  # * Content

  def self.average_lift_total

    if self.all.length == 0
      nil
    else
      self.all.inject(0){|sum, lifter| sum + lifter.lift_total}/self.all.length.to_f
    end

  end

  def total_gym_cost

    # ? Using .memberships instead of .gyms, since nothing so far prevents a lifter having multiple memberships at a single gym.

    self.memberships.inject(0){|sum, membership| sum + membership.cost}

  end

  def this_lifter_signs_up(gym, cost)

    Membership.new(cost, gym, self)

  end



end
