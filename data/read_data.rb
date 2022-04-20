def read_person_data(person_json)
  if File.exist?('./data/persons.json')

    persons = JSON.parse(File.read('./data/persons.json'))
    persons.map do |person|
      if person['occupation'] == 'Teacher'
        person_json << Teacher.new(person['age'], person['specialization'], person['name'])
      else
        person_json << Student.new(person['age'], person['classroom'], person['name'], person['parent_permission'])
      end
    end
  else
    []
  end
end

def read_book(book_json)
  if File.exist?('./data/books.json')
    books = JSON.parse(File.read('./data/books.json'))
    books.map do |book|
      book_json << Book.new(book['title'], book['author'])
    end
  else
    []
  end
end

def read_rentals(rental_json)
  if File.exist?('./data/rentals.json')
    rent = JSON.parse(File.read('./data/rentals.json'))
    rent.map do |rental|
      rental_json << Rental.new(rental['date'], @persons[rental['person_index']], @books[rental['book_index']])
    end
  else
    []
  end
end
