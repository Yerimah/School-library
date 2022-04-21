require_relative '../nameable'
require_relative '../person'

describe Decorator do
  context 'Test for the Nameable class' do
    person = Person.new('constantine', 22, true)
    person.correct_name
    cap_person = CapitalizeDecorator.new(person)
    cap_trimmed_person = TrimmerDecorator.new(cap_person)

    it 'checks if capitalize and trimming works' do
      expect(cap_person.correct_name).to eql('Constantine')
      expect(cap_trimmed_person.correct_name).to eql('Constanti')
    end
  end
end
