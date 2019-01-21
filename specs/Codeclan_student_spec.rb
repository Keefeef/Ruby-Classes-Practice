require('minitest/autorun')
require('minitest/rg')
require_relative('../Codeclan_student')

class TestStudent < MiniTest::Test
  def setup
    @person = Student.new("James", "e23")
  end

  def test_person_name
    @person = Student.new("James", "e23")
    assert_equal("James", @person.student_name())
  end

  def test_get_cohort
    @person = Student.new("James", "e23")
    assert_equal("e23", @person.student_cohort)
  end

  def test_set_name
    @person.student_name = "Bob"
    assert_equal("Bob", @person.student_name())
  end

  def test_set_cohort
    @person.student_cohort = "e25"
    assert_equal("e25", @person.student_cohort)
  end

  def test_student_talk
    assert_equal("I can talk", @person.talk)
  end

  def test_student_language
    assert_equal("I love Ruby", @person.student_language("Ruby"))
  end


end
