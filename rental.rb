require './book'
require './person'

class Rental
  attr_accessor :person, :book
  attr_reader :date

  def initialize(person, date, book)
    @date = date
    @person = person
    person.rental.push(self)
    @book = book
    book.rental.push(self)
  end
end
