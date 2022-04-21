require_relative '../classroom'
require_relative '../student'

describe Classroom do
  context 'Test for the classroom class' do
    before(:each) do
      label = 'coding'
      @coding_class = Classroom.new(label)

      @student1 = Student.new(label, 14, 'Selina', true)
    end

    it 'checks if label of classroom is coding' do
      expect(@coding_class.label).to eq('coding')
    end

    it 'checks if student is a member of Classroom' do
      @coding_class.add_student(@student1)
      expect(@coding_class.students[0].name).to eq('Selina')
    end
  end
end
