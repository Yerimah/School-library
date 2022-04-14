require './nameable'
require './rental'

class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name, parent_permission)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def correct_name
    @name
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def add_rentals=(book, date)
    Rental.new(book, self, date)
  end

  private :of_age?
end
