require './person'
require './classroom'

class Student < Person
  attr_reader :classroom

  # rubocop:disable Style/OptionalBooleanParameter
  def initialize(classroom, age, name = 'unknown', parent_permission = true)
    @classroom = classroom
    super(name, age, parent_permission)
  end
  # rubocop:enable Style/OptionalBooleanParameter

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
