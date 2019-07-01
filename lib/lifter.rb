class Lifter
  attr_reader :name
  attr_accessor :lift_total


  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
  end


  def new_membership(gym,cost)
    Membership.new(gym,self,cost)
  end

  def lifter_memberships
    Membership.all.select do |membership_instances|
    membership_instances.lifter == self
    end
  end

  def lifter_gyms
    lifter_memberships.map do |lifter_objects|
        lifter_objects.gym
    end
  end


  #lifter actions
  
  # when lifter works out, lift_total increases by 1
  def works_out
    self.lift_total+=1
  end

  # when lifter slacks off, lift_total decreases by 1
  def slacks_off
    self.lift_total-=1
  end


  # end lifter actions


  # helper method
  def self.total
    self.all.map do |lifter_objects|
      lifter_objects.lift_total
    end.inject(:+)
  end

  def self.average
    self.total / self.all.size
  end

  def lifter_memberships_total
    lifter_memberships.map do |lifter_objects|
      lifter_objects.cost
    end.inject(:+)
  end

# all
  def self.all
    @@all
  end


end
