require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test
  def setup
 @book = Library.new
end

def test_get_book
  @book.(:title) = "Lord of the flies"
  assert_equal("Lord of the flies", @book.(:title))
end


end
