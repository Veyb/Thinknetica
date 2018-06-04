class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrival(train)
    trains << train
    puts "На станцию #{name} прибыл поезд № #{train.number}"
  end

  def departure(train)
    trains.delete(train)
    puts "Со станции #{name} отправился поезд № #{train.number}"
  end

  def trains_list
    cargo_count = trains.count { |train| train.type == "грузовой" }
    passenger_count = trains.count { |train| train.type == "пассажирский" }
    puts "На странции #{name} #{cargo_count} грузовых и #{passenger_count} пассажирских поездов"
  end
end
