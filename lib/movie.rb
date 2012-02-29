class Movie

  CHILDRENS   = 2
  REGULAR     = 0
  NEW_RELEASE = 1

  attr_accessor :price
  attr_reader   :title

  def initialize(title_string, price_code_int)
    @title, @price_code = title, price_code_int
  end

end

