require_relative '../rental'
require_relative '../book'
require_relative '../person'

describe Rental do
    context 'test for rental class' do
        before(:each) do
        date = '2022-04-21'
        book1 = Book.new('mango tree', 'Benjamin')
        person1 = Person.new('Jonny', 45, true)
        @rental = Rental.new(date, person1, book1)
        end

        it 'checks for an instance of Rental' do
            expect(@rental).to be_an_instance_of(Rental)
          end

        it 'checks if rental has all the attribute' do
            expect(@rental.book.title).to eql('mango tree')
            expect(@rental.book.author).to eql('Benjamin')
            expect(@rental.person.name).to eql('Jonny')
            expect(@rental.person.age).to eql(45)
        end
    end
end