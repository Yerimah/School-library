require_relative '../teacher'

describe Teacher do
    context 'Test for the Teacher class' do
        before(:each) do
          specialization = 'technology'
          age = 45
          name = 'Van'
          parent_permission = true
          @teacher = Teacher.new(specialization, age, name)
        end

        it 'should check for the instance of teacher class' do
            expect(@teacher).to be_an_instance_of(Teacher)
        end

        it 'checks if teacher can use service' do
            expect(@teacher.can_use_services?).to be_truthy
        end

        
    end
end

