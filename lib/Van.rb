class Van
  def initialize
    @BikesVan = []
  end

  def deliver_to_garage(garage)
    garage.store(@BikesVan)
  end

  def collect_broken(dockingStation)
    bikes = dockingStation.all_bikes
    check_broken(bikes)
  end

  def check_broken(bikes)
    bikes.each do |bike|
      if bike.broken?
        @BikesVan << bike
      end
    end
  end

  def return_to_dock(docking_station)
    docking_station.dock(@BikesVan)
  end
end
