class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    Gym.all << self 
  end
  def self.all 
    @@all
  end
  def recruit_member(cost,member)
    Membership.new(cost,member,self)
  end
  def memberships 
    Membership.all.select {|m| m.gym == self}
  end
  def all_lifters 
    Membership.all.select {|m| m.gym == self}
    .map {|m| m.member}
  end
  def all_names
    Membership.all.select {|m| m.gym == self}
    .map {|m| m.member.name}
  end
  def lift_total
    Membership.all.select {|m| m.gym == self}
    .map {|m| m.member.lift_total}.reduce(:+)
  end
end

