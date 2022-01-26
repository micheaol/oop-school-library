class Rental
  belongs_to :person
  belongs_to :book
  attr_accessor :date

  def initialize(date, person, book)
    @date = date
    @book = book
    @person = person
  end
end
