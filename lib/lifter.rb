class Lifter
  attr_accessor :memberships
  attr_reader :name, :lift_total
  @@all  = []
  def initialize(name, lift_total)
    @name = name
    @memberships
    @lift_total = lift_total
    Lifter.all << self
  end
  def self.all 
    @@all 
  end 
  def sign_up cost,gym 
    Membership.new(cost,self,gym)
  end
  def all_memberships 
    Membership.all.select {|m| m.member == self}
  end
  def all_gyms 
    Membership.all.select {|m| m.member == self}
    .map {|m| m.gym}
  end
  def self.average_lift
    Membership.all.map {|m| m.member.lift_total}
    .reduce(:+)/Membership.all.length 
  end
  def cost 
    Membership.all.select {|m| m.member == self}
    .map {|m| m.cost}.reduce(:+)
  end
end