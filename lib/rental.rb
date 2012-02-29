class Rental 

  attr_reader :movie, :days_rented

  def initialize(movie, days_rented)
    @movie, @days_rentend = movie, days_rented.to_i()
  endh

end
