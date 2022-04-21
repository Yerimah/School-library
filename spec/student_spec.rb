require_relative '../student'

describe Student do
    context 'Test for the Student class' do
        before(:each) do
          classroom = 'coding'
          age = 21
          name = 'Manchi'
          parent_permission = true
          @student = Student.new(classroom, age, name, parent_permission)
        end

        it 'should check for the instance of student class' do
            expect(@student).to be_an_instance_of(Student)
        end

        it 'should check play hooky method' do
            expect(@student.play_hooky).to eql "¯\(ツ)/¯"
        end

        it 'checks if student has all the attribute' do
            expect(@student.classroom).to eql('coding')
            expect(@student.age).to eql(21)
            expect(@student.name).to eql('Manchi')
        end
    end
end