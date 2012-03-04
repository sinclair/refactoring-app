class Customer

  attr_reader :name

  def initialize(name)
    @name, @rentals = name, []
  end

  def add_rental(rental)
    @rentals  <<  rental
  end

  def statement()
    total_amount            = 0
    frequent_renter_points  = 0
    result                  = "Rental record for #{name()} \n"

    @rentals.each do |each|
      this_amount     = 0
      
      case  each.movie.price_code()
      when Movie::REGULAR
        this_amount   +=  2
        if (each.days_rented > 2) then
          this_amount +=  (each.days_rented - 2) * 1.5
        end
      when Movie::CHILDRENS
        this_amount   +=  1.5
        if (each.days_rented > 2) then
          this_amount +=  (each.days_rented - 3) * 1.5
        end
      when Movie::NEW_RELEASE
        this_amount   +=  each.days_rented * 3
      end

      # add frequent renter points
      frequent_renter_points += 1
      if ((each.movie.price_code == Movie::NEW_RELEASE) && 
          each.days_rented > 1) then
        frequent_renter_points += 1
      end
      
      # show figures for this rental
      result        += "\t#{each.movie.title()}\t#{this_amount} \n"
      
      total_amount  +=  this_amount
    end
    
    # add footer lines
    result  +=  "Amount owed is #{total_amount} \n"
    result  +=  "You earned #{frequent_renter_points} frequent renter points"
    
    return result
    
  end

end
