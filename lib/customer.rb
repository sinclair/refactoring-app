class Customer

  attr_reader :name

  def initialize(name)
    @name, @rentals = name, []
  end

  def add_rental(rental)
    @rentals  <<  rental
  end

  def statement()

    @rentals.each do |rental|
      puts case  rental.movie.price_code()
      when Movie::REGULAR
        'Regular'
      when Movie::CHILDRENS
        'Childrens'
      when Movie::NEW_RELEASE
        'New Release'
      end
    end

  end

end
