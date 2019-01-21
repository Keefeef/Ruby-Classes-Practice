class Library
  def setup


  attr_accessor :book_title, :rentee_name, :rental_date

  def initialize(book_title, rentee_name, rental_date)
    @book_title = book_title
    @rentee_name = rentee_name
    @rental_date = rental_date

    @book = {
        title: book_title,
        rental_details: {
          student_name: rentee_name,
          date: rental_date
        }
      }

    @book_collection = [@book]

  end

  def get_book
    return @title
  end

end

end 
