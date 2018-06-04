class Route
  attr_accessor : :stations
  
  def initialize(from, to)
    @stations = [from, to]
  end

  def add_station(station)
    self.stations.insert(-2, station)
    puts " В маршрут добавлена промежуточная остановка на станции #{station.name}"
  end

  def delete_station(station)
    if stations.first != station && stations.last != station
      self.stations.delete(station)
      puts "Из маршрута была удалена станция #{station.name}"
    else
      puts "Начальная и конечная станция не могут быть удалены из маршрута"
    end
  end

  def list
    stations.each { |station| puts station.name }
  end
end
