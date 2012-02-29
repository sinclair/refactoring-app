class Customer

  attr_reader :name

  def initialize(name)
    @name, @rentals = name, []
  end

  def add_rental(rental)
    @rentals  <<  rental
  end

  def statement()
  end

end
