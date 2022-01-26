class Book
  attr_accessor :title, :author

  has_many :rentals
  has_many :persons, through: :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    rentals << rental
    rental.book = self
  end
end
