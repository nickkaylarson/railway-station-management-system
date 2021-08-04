# frozen_string_literal: true

class Route
  attr_reader :starting_station, :end_station, :intermediate_stations

  def initialize(starting_station, end_station)
    @starting_station = starting_station
    @end_station = end_station
    @intermediate_stations = []
  end

  def intermediate_stations=(station)
    @intermediate_stations << station
  end

  def delete_intermediate_station(station)
    @intermediate_stations.delete(station)
  end

  def stations
    stations = []
    stations << @starting_station
    @intermediate_stations.each do |intermediate_station|
      stations << intermediate_station
    end
    stations << @end_station
    stations
  end
end