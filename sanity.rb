require './lib/movie'
require './lib/rental'
require './lib/customer'

joe     = Customer.new("Joe Baker")

jaws  = Movie.new('Jaws',   Movie::NEW_RELEASE)
r     = Rental.new(jaws, 5)
joe.add_rental(r)

bambi = Movie.new('Bambi',  Movie::CHILDRENS)
r     = Rental.new(bambi, 10)
joe.add_rental(r)

lassie  = Movie.new('Lassie', Movie::REGULAR)
r       = Rental.new(lassie, 8)
joe.add_rental(r)

puts joe.statement()