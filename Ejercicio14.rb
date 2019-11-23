class Car
  attr_accessor :brand, :color, :year, :init_car, :init_trip
      
  def initialize()
    @init_car = true
    @init_trip = true
  end
      
  def start_the_car
    self.init_car = false
    "init the car"
  end
      
  def start_trip
    self.init_trip = false 
    raise "First start the car, please" if self.init_car
    "Starting the trip"
  end 
      
  def finish_trip
    raise "First start the trip, please" if self.start_trip
    "Finish the trip" 
  end
end 
  
car = Car.new()
car.start_the_car
car.start_trip
car.finish_trip