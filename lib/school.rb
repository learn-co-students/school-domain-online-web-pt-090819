# code here!
class School
  attr_accessor :school_name, :roster
   
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end
 
  def grade(student_grade)
    roster[student_grade]
  end
  
  def sort
    roster.each do | grade, names| 
      roster[grade] = names.sort
    end
    roster
  end
  
end