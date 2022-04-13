require './book'
require './person'

class Rental
  attr_accessor :person, :book
  attr_reader :date

  def initialize(person, date, book)
    @date = date
    @person = person
    person.rentals.push(self)
    @book = book
    book.rentals.push(self)
  end
end
