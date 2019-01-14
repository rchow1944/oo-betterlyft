
class Passenger
  @@all = []

  attr_accessor :total_distance
  attr_reader :name

  def initialize(name)
    @name = name
    @total_distance = 0.0
    @@all << self
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    self.rides.map {|ride| ride.driver} #.uniq
  end

  def self.all
    @@all
  end

  def self.premium_members
    self.all.select {|passenger| passenger.total_distance > 100.0}
  end
end
