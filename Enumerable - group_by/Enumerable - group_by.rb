def group_by_marks(marks, pass_marks)
    all_students = Hash.new
    failed = Array.new
    passed = Array.new
  
    marks.each do |student|
  
      if student[1] < pass_marks
        failed.push(student)
      elsif student[1] > pass_marks
        passed.push(student)
      end
    end
      all_students["Failed"] = failed if failed.any?
      all_students["Passed"] = passed if passed.any?
      all_students
  end