class Rental
  belongs_to :person
  belongs_to :book
  attr_accessor :date

  def initialize(date, person, book)
    @date = date

    @book = book
    book.rentals << self unless book.rentals.include?(self)

    @person = person
    person.rentals << self unless person.rentals.include?(self)
  end
end
