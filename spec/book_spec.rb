require_relative '../book'

describe Book do
  context 'Test for the Book class' do
    before(:each) do
      title = 'Mindset'
      author = 'Carol Dweck'
      @book = Book.new(title, author)
    end

    it 'checks for an instance of book' do
      expect(@book).to be_an_instance_of(Book)
    end

    it 'checks if the title of book is Mindset' do
      expect(@book.title).to eq('Mindset')
    end

    it 'checks if author of book is Carol Dweck' do
      expect(@book.author).to eq('Carol Dweck')
    end

    it 'checks if no book has been rented' do
      expect(@book.rentals.length).to eq(0)
      expect(@book.rentals).to eq([])
    end
  end
end
