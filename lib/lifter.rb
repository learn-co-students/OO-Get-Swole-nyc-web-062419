class Lifter
  attr_accessor :lift_total, :name, :gyms, :memberships
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @memberships = []
    @gyms = []
    Lifter.all << self
  end

  def self.all
    # 1 Gets a list of all lifters
    @@all
  end

  def memberships_list
    # 2  #### ADD MEMBERSHIPS TO ARRAY AND CALL THE ARRAY
    # 5  ##### STEP TWO: get the total cost of all memberships
    self.memberships
  end

  def total_cost
    self.memberships.map do |membership_instance|
      membership_instance.cost
      ###### why is the (0) needed?
    end.inject(0){|sum,x| sum + x }
  end

  def gyms_list
    # 3   ##### ADD GYMS TO ARRAY AND CALL THE ARRAY
    self.gyms
  end

  def join_gym(price, gym)
    # 6 #####  TAKES IN GYM AND COST AND SIGNS UP (ADDS COST TO TOTAL CMEMBERSHIP COST)
    new_membership = Membership.new(price)
    self.memberships << new_membership
    self.gyms << gym
    gym.memberships << new_membership
    gym.lifters << self
  end

  def self.average_lift
    # 4
    average_lift_array = []
    self.all.each do |lifter_instance|
      average_lift_array << lifter_instance.lift_total
    end
    average_lift_array.inject{ |sum, el| sum + el }.to_f / average_lift_array.size
  end

end

