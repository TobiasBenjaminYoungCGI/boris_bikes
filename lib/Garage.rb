class Garage
  def initialize
    @storedBikes = []
  end

  def release_to_van(van)
    van.store(@storedBikes)
  end

  def store(bikes)
    @storedBikes << bikes
  end

  def fix_broken_bikes
    @storedBikes.each do |bike|
      bike.report_fixed
    end
  end

end
