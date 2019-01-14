require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
driver = Driver.new("Sam")
passenger = Passenger.new("Bob")
passenger2 = Passenger.new("Guye")
ride1 = Ride.new(driver, passenger, 100.0)
ride2 = Ride.new(driver, passenger, 20.0)
ride3 = Ride.new(driver, passenger2, 50.0)
binding.pry
