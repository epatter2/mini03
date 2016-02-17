require "./lib/semester.rb"
require "minitest/autorun"

class TestSemester < Minitest::Test
    
  def test_sample
    assert_equal(Semester.new.next_semesters("Spring 2016"),("Summer 2016"))
    assert_equal(Semester.new.next_semesters("Summer 2016"),("Fall 2016"))
    assert_equal(Semester.new.next_semesters("Fall 2016"),("Spring 2017"))
    assert_equal(Semester.new.next_semester("Spring 2016", 4).last,("Summer 2017"))
    assert_equal(Semester.new.next_semester("Fall 2016",20).last,("Summer 2023"))
    assert_equal(Semester.new.next_semester("Fall 2015",0).length,1)
    assert_equal(Semester.new.next_semester("Fall 2015",3).length,4)
  end

end

# ruby tests/test_semester.rb