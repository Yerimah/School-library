require_relative '../student'

describe Student do
    context 'Test for the Student class' do
        before(:each) do
          classroom = 'coding'
          age = 21
          name = 'manchi'
          parent_permission = true
          @student = Student.new(classroom, age, name, parent_permission)
        end