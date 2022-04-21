require_relative '../person'

describe Person do
  context 'Test for the person class' do
    before(:each) do
      name = 'Daniel'
      age = 12
      parent_permission = true
      @person = Person.new(name, age, parent_permission)
    end

    it 'checks for an instance of person' do
      expect(@person).to be_an_instance_of(Person)
    end

    it 'checks for the name of person' do
      expect(@person.correct_name).to eq('Daniel')
    end

    it 'checks for the age of person' do
      expect(@person.age).to be < (18)
    end

    it 'checks if person can use service' do
      expect(@person.can_use_services?).to be_truthy
    end

    it 'checks if person does not have any rentals' do
      expect(@person.rentals.length).to eq(0)
      expect(@person.rentals).to eq([])
    end
  end
end
