require_relative '../classroom'
require_relative '../student'

describe Classroom do
  context 'Test for the classroom class' do
    before(:each) do
      label = 'coding'
      @coding_class = Classroom.new(label)

      @studentOne = Student.new(label, 14, 'Selina', true)

      @coding_class.add_student(@studentOne)
    end

    it 'checks for an instance of Classroom' do
      expect(@coding_class.label).to eq('coding')
    end

    it 'checks for an instance of Classroom' do
      expect(@coding_class.students[0].name).to eq('Selina')
    end
  end
end
