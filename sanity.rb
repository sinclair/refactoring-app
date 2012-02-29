require './lib/movie'
require './lib/rental'
require './lib/customer'

j=Customer.new("Joe Baker")
m=Movie.new('Jaws', Movie::NEW_RELEASE)
r=Rental.new(m, 5)
j.add_rental(r)
puts j.statement 