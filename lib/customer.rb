class Customer

  attr_reader :name

  def initialize(name)
    @name, @rentals = name, []
  end

  def add_rental(rental)
    @rentals  <<  rental
  end

  def statement()

    @rentals.each do |each|
      this_amount = 0
      
      puts case  each.movie.price_code()
      when Movie::REGULAR
        this_amount   +=  2
        if (each.days_rented > 2) then
          this_amount +=  (each.days_rented - 2) * 1.5
        end
        ['Regular', this_amount]
      when Movie::CHILDRENS
        this_amount   +=  1.5
        if (each.days_rented > 2) then
          this_amount +=  (each.days_rented - 3) * 1.5
        end
        ['Childrens', this_amount]
      when Movie::NEW_RELEASE
        this_amount   +=  each.days_rented * 3
        ['New Release', this_amount]
      end
    end

  end

end
