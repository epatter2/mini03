require "./lib/semester.rb"
require "minitest/autorun"

class TestSemester < Minitest::Test
    
  def test_sample
    assert_equal(Semester.new.next_semesters("Spring 2016"),("Summer 2016"))
    assert_equal(Semester.new.next_semesters("Summer 2016"),("Fall 2016"))
    assert_equal(Semester.new.next_semesters("Fall 2016"),("Spring 2017"))
    
  end

end

# ruby tests/test_semester.rb