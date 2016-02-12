require "./lib/semester.rb"
require "minitest/autorun"

class TestSemester < Minitest::Test
    
  def test_sample
    assert_equal(Semester.new.next_semesters("Fall2015",0),"Fall2015")
  end

end
