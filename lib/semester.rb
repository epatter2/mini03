class Semester
  
  def next_semester(current,num)  
    # call the following n-times
    # and store result in an array
    results = []
    results.push("<u><strong>Current Semester: " + current.upcase + "<strong/></u>")
    num.to_i.times do
      result = next_semesters(current)
      results.push(result)
      current = result
    end
    return results
  end
  
  # current wil always be "Spring 2016"
    def next_semesters(current)
      tokens = current.split(" ")
      term = tokens[0]
      year = tokens[1].to_i
      if term == "Spring"
        return "Summer " + year.to_s
        elsif term == "Summer"
        return "Fall " + year.to_s
      else
        return "Spring " + (year + 1).to_s
      end
    end
end