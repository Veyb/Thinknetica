class Train
  attr_accessor :speed, :railway_car_count, :route, :current_station

  def initialize(number, type, railway_car_count)
    @number = number
    @type = type
    @railway_car_count = railway_car_count
    @speed = 0
  end

  def increase_speed(speed)
    self.speed = speed
  end

  def stop
    self.speed = 0
  end

  def attach_railway_car
    stop
    self.railway_car_count += 1
  end

  def detach_railway_car
    if railway_car_count.zero?
      puts "Нет вагонов."
    else
      stop
      self.railway_car_count -= 1
    end
  end

  def set_route(route)
    self.route = route
    puts "Поезду #{number} задан маршрут #{route.stations.first.name} - #{route.stations.last.name}"
    self.current_station = route.stations.first
    current_station.arrival(self)
  end

  def next_station
    current_index = route.stations.index(current_station)
    if current_index + 1 == route.stations.size
      puts "Поезд находится на конечной станции"
    else
      route.stations[current_index + 1]
    end
  end

  def previous_station
    current_index = route.stations.index(current_station)
    if current_index == 0
      puts "Поезд находится на первой станции"
    else
      route.stations[current_index - 1]
    end
  end

  def move_next_station
    if current_station == route.stations.last
      puts "Поезд находится на конечной станции"
    else
      current_station.departure(self)
      next_station.arrival(self)
      self.current_station = next_station
    end
  end

  def move_previous_station
    if current_station == route.stations.first
      puts "Поезд находится на первой станции"
    else
      current_station.departure(self)
      previous_station.arrival(self)
      self.current_station = previous_station
    end
  end
end
