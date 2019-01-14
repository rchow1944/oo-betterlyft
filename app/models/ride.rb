class Ride
  @@all = []

  attr_accessor :driver, :passenger, :distance

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    self.passenger.total_distance += distance
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    distance_sum = self.all.inject(0.0) {|sum, ride| sum + ride.distance}
    distance_sum / self.all.count
  end
end
