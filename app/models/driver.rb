
class Driver
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def passenger_names
    self.rides.map {|ride| ride.passenger.name}.uniq
  end

  def rides
    Ride.all.select {|ride| ride.driver == self}
  end

  def self.all
    @@all
  end

  def self.mileage_cap(distance)
    self.all.select {|driver|
      #All of 1 Driver rides total distance based on passengers total distance
      driver.rides.inject(0.0) {|sum, ride| sum + ride.distance} > distance
    }
  end
end
